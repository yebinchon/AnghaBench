
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_2__ {scalar_t__ clear_to_send; } ;


 int IXGBE_PF_CONTROL_MSG ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int ixgbe_write_mbx (struct ixgbe_hw*,int *,int,int) ;

void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ping;
 int i;

 for (i = 0 ; i < adapter->num_vfs; i++) {
  ping = IXGBE_PF_CONTROL_MSG;
  if (adapter->vfinfo[i].clear_to_send)
   ping |= IXGBE_VT_MSGTYPE_CTS;
  ixgbe_write_mbx(hw, &ping, 1, i);
 }
}
