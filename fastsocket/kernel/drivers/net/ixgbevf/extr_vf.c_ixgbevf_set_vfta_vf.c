
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_VF_SET_VLAN ;
 int IXGBE_VT_MSGINFO_SHIFT ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int) ;

__attribute__((used)) static s32 ixgbevf_set_vfta_vf(struct ixgbe_hw *hw, u32 vlan, u32 vind,
          bool vlan_on)
{
 u32 msgbuf[2];

 msgbuf[0] = IXGBE_VF_SET_VLAN;
 msgbuf[1] = vlan;

 msgbuf[0] |= vlan_on << IXGBE_VT_MSGINFO_SHIFT;

 ixgbevf_write_msg_read_ack(hw, msgbuf, 2);

 return 0;
}
