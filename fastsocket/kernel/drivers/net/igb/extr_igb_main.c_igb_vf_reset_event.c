
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct igb_adapter {TYPE_1__* vf_data; } ;
struct TYPE_2__ {unsigned char* vf_mac_addresses; int flags; } ;


 int IGB_VF_FLAG_PF_SET_MAC ;
 int eth_random_addr (unsigned char*) ;
 int igb_vf_reset (struct igb_adapter*,size_t) ;

__attribute__((used)) static void igb_vf_reset_event(struct igb_adapter *adapter, u32 vf)
{
 unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;


 if (!(adapter->vf_data[vf].flags & IGB_VF_FLAG_PF_SET_MAC))
  eth_random_addr(vf_mac);


 igb_vf_reset(adapter, vf);
}
