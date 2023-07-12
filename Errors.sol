// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlings{
    address public owner=msg.sender;
    uint256 public age=20;

   
  function checkRequire(uint _x) public {
     age+=5;
     require(_x>10,"The value of x must be greater than 10");
  }
  
  error customError(string);

  function checkRevert(uint _i) public {
     age+=5;
     if(_i<10){
        revert customError("The value of i must be greater than 10");
     }


  }

  function CheckOwnership () public {
     age+=5;
     assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  }

}
