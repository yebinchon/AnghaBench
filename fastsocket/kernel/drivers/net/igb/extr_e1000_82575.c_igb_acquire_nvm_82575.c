
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* release_swfw_sync ) (struct e1000_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct e1000_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_SWFW_EEP_SM ;
 scalar_t__ igb_acquire_nvm (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ) ;
 int stub2 (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 igb_acquire_nvm_82575(struct e1000_hw *hw)
{
 s32 ret_val;

 ret_val = hw->mac.ops.acquire_swfw_sync(hw, E1000_SWFW_EEP_SM);
 if (ret_val)
  goto out;

 ret_val = igb_acquire_nvm(hw);

 if (ret_val)
  hw->mac.ops.release_swfw_sync(hw, E1000_SWFW_EEP_SM);

out:
 return ret_val;
}
