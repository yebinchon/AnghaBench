
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int clear_to_send; } ;


 size_t IXGBE_VT_MSGTYPE_NACK ;
 int ixgbe_write_mbx (struct ixgbe_hw*,size_t*,int,size_t) ;

__attribute__((used)) static void ixgbe_rcv_ack_from_vf(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 msg = IXGBE_VT_MSGTYPE_NACK;


 if (!adapter->vfinfo[vf].clear_to_send)
  ixgbe_write_mbx(hw, &msg, 1, vf);
}
