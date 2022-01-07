
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int E1000_SWFW_EEP_SM ;
 int igb_release_swfw_sync_i210 (struct e1000_hw*,int ) ;

void igb_release_nvm_i210(struct e1000_hw *hw)
{
 igb_release_swfw_sync_i210(hw, E1000_SWFW_EEP_SM);
}
