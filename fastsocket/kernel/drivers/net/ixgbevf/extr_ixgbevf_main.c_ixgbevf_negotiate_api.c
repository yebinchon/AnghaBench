
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int mbx_lock; struct ixgbe_hw hw; } ;


 int ixgbe_mbox_api_10 ;
 int ixgbe_mbox_api_11 ;
 int ixgbe_mbox_api_unknown ;
 int ixgbevf_negotiate_api_version (struct ixgbe_hw*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int api[] = { ixgbe_mbox_api_11,
        ixgbe_mbox_api_10,
        ixgbe_mbox_api_unknown };
 int err = 0, idx = 0;

 spin_lock_bh(&adapter->mbx_lock);

 while (api[idx] != ixgbe_mbox_api_unknown) {
  err = ixgbevf_negotiate_api_version(hw, api[idx]);
  if (!err)
   break;
  idx++;
 }

 spin_unlock_bh(&adapter->mbx_lock);
}
