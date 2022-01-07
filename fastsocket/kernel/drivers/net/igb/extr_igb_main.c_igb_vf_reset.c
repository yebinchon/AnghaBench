
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct igb_adapter {int netdev; TYPE_1__* vf_data; } ;
struct TYPE_2__ {scalar_t__ num_vf_mc_hashes; int pf_qos; scalar_t__ pf_vlan; int last_nack; int flags; } ;


 int IGB_VF_FLAG_PF_SET_MAC ;
 int igb_clear_vf_vfta (struct igb_adapter*,size_t) ;
 int igb_ndo_set_vf_vlan (int ,size_t,scalar_t__,int ) ;
 int igb_set_rx_mode (int ) ;
 int igb_set_vmolr (struct igb_adapter*,size_t,int) ;
 int jiffies ;

__attribute__((used)) static inline void igb_vf_reset(struct igb_adapter *adapter, u32 vf)
{

 adapter->vf_data[vf].flags &= IGB_VF_FLAG_PF_SET_MAC;
 adapter->vf_data[vf].last_nack = jiffies;


 igb_set_vmolr(adapter, vf, 1);


 igb_clear_vf_vfta(adapter, vf);
 if (adapter->vf_data[vf].pf_vlan)
  igb_ndo_set_vf_vlan(adapter->netdev, vf,
        adapter->vf_data[vf].pf_vlan,
        adapter->vf_data[vf].pf_qos);
 else
  igb_clear_vf_vfta(adapter, vf);


 adapter->vf_data[vf].num_vf_mc_hashes = 0;


 igb_set_rx_mode(adapter->netdev);
}
