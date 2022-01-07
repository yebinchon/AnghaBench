
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vf_data_storage {int flags; scalar_t__ last_nack; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct e1000_hw hw; } ;


 size_t E1000_VT_MSGTYPE_NACK ;
 int HZ ;
 int IGB_VF_FLAG_CTS ;
 int igb_write_mbx (struct e1000_hw*,size_t*,int,size_t) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void igb_rcv_ack_from_vf(struct igb_adapter *adapter, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];
 u32 msg = E1000_VT_MSGTYPE_NACK;


 if (!(vf_data->flags & IGB_VF_FLAG_CTS) &&
     time_after(jiffies, vf_data->last_nack + (2 * HZ))) {
  igb_write_mbx(hw, &msg, 1, vf);
  vf_data->last_nack = jiffies;
 }
}
