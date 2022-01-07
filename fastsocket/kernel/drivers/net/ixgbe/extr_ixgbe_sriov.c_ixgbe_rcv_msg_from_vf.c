
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
typedef int s32 ;
struct TYPE_2__ {int clear_to_send; } ;


 int IXGBE_ERR_MBX ;
 int IXGBE_VFMAILBOX_SIZE ;


 int IXGBE_VF_RESET ;





 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int drv ;
 int e_err (int ,char*,int) ;
 int ixgbe_get_vf_queues (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_negotiate_vf_api (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_read_mbx (struct ixgbe_hw*,int*,int,int) ;
 int ixgbe_set_vf_lpe (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_set_vf_mac_addr (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_set_vf_macvlan_msg (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_set_vf_multicasts (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_set_vf_vlan_msg (struct ixgbe_adapter*,int*,int) ;
 int ixgbe_vf_reset_msg (struct ixgbe_adapter*,int) ;
 int ixgbe_write_mbx (struct ixgbe_hw*,int*,int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
{
 u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
 u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
 struct ixgbe_hw *hw = &adapter->hw;
 s32 retval;

 retval = ixgbe_read_mbx(hw, msgbuf, mbx_size, vf);

 if (retval) {
  pr_err("Error receiving message from VF\n");
  return retval;
 }


 if (msgbuf[0] & (IXGBE_VT_MSGTYPE_ACK | IXGBE_VT_MSGTYPE_NACK))
  return retval;


 IXGBE_WRITE_FLUSH(hw);

 if (msgbuf[0] == IXGBE_VF_RESET)
  return ixgbe_vf_reset_msg(adapter, vf);





 if (!adapter->vfinfo[vf].clear_to_send) {
  msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
  ixgbe_write_mbx(hw, msgbuf, 1, vf);
  return retval;
 }

 switch ((msgbuf[0] & 0xFFFF)) {
 case 130:
  retval = ixgbe_set_vf_mac_addr(adapter, msgbuf, vf);
  break;
 case 129:
  retval = ixgbe_set_vf_multicasts(adapter, msgbuf, vf);
  break;
 case 128:
  retval = ixgbe_set_vf_vlan_msg(adapter, msgbuf, vf);
  break;
 case 132:
  retval = ixgbe_set_vf_lpe(adapter, msgbuf, vf);
  break;
 case 131:
  retval = ixgbe_set_vf_macvlan_msg(adapter, msgbuf, vf);
  break;
 case 134:
  retval = ixgbe_negotiate_vf_api(adapter, msgbuf, vf);
  break;
 case 133:
  retval = ixgbe_get_vf_queues(adapter, msgbuf, vf);
  break;
 default:
  e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
  retval = IXGBE_ERR_MBX;
  break;
 }


 if (retval)
  msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
 else
  msgbuf[0] |= IXGBE_VT_MSGTYPE_ACK;

 msgbuf[0] |= IXGBE_VT_MSGTYPE_CTS;

 ixgbe_write_mbx(hw, msgbuf, mbx_size, vf);

 return retval;
}
