
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vf_data_storage {int flags; int num_vf_mc_hashes; int * vf_mc_hashes; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct e1000_hw hw; } ;


 size_t E1000_VF_SET_PROMISC_MULTICAST ;
 int E1000_VMOLR (size_t) ;
 size_t E1000_VMOLR_MPME ;
 size_t E1000_VMOLR_ROMPE ;
 size_t E1000_VMOLR_ROPE ;
 size_t E1000_VT_MSGINFO_MASK ;
 int EINVAL ;
 int IGB_VF_FLAG_MULTI_PROMISC ;
 int IGB_VF_FLAG_UNI_PROMISC ;
 int igb_mta_set (struct e1000_hw*,int ) ;
 size_t rd32 (int ) ;
 int wr32 (int ,size_t) ;

__attribute__((used)) static int igb_set_vf_promisc(struct igb_adapter *adapter, u32 *msgbuf, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 vmolr = rd32(E1000_VMOLR(vf));
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];

 vf_data->flags &= ~(IGB_VF_FLAG_UNI_PROMISC |
       IGB_VF_FLAG_MULTI_PROMISC);
 vmolr &= ~(E1000_VMOLR_ROPE | E1000_VMOLR_ROMPE | E1000_VMOLR_MPME);

 if (*msgbuf & E1000_VF_SET_PROMISC_MULTICAST) {
  vmolr |= E1000_VMOLR_MPME;
  vf_data->flags |= IGB_VF_FLAG_MULTI_PROMISC;
  *msgbuf &= ~E1000_VF_SET_PROMISC_MULTICAST;
 } else {




  if (vf_data->num_vf_mc_hashes > 30) {
   vmolr |= E1000_VMOLR_MPME;
  } else if (vf_data->num_vf_mc_hashes) {
   int j;
   vmolr |= E1000_VMOLR_ROMPE;
   for (j = 0; j < vf_data->num_vf_mc_hashes; j++)
    igb_mta_set(hw, vf_data->vf_mc_hashes[j]);
  }
 }

 wr32(E1000_VMOLR(vf), vmolr);


 if (*msgbuf & E1000_VT_MSGINFO_MASK)
  return -EINVAL;

 return 0;
}
