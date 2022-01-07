
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_BASE1000T_STATUS ;
 scalar_t__ E1000_IDLE_ERROR_COUNT_MASK ;
 int E1000_RECEIVE_ERROR_COUNTER ;
 scalar_t__ E1000_RECEIVE_ERROR_MAX ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,scalar_t__*) ;

bool e1000_check_phy_82574(struct e1000_hw *hw)
{
 u16 status_1kbt = 0;
 u16 receive_errors = 0;
 s32 ret_val;




 ret_val = e1e_rphy(hw, E1000_RECEIVE_ERROR_COUNTER, &receive_errors);
 if (ret_val)
  return 0;
 if (receive_errors == E1000_RECEIVE_ERROR_MAX) {
  ret_val = e1e_rphy(hw, E1000_BASE1000T_STATUS, &status_1kbt);
  if (ret_val)
   return 0;
  if ((status_1kbt & E1000_IDLE_ERROR_COUNT_MASK) ==
      E1000_IDLE_ERROR_COUNT_MASK)
   return 1;
 }

 return 0;
}
