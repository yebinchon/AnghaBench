
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct vf_data_storage {int num_vf_mc_hashes; int * vf_mc_hashes; } ;
struct igb_adapter {int netdev; struct vf_data_storage* vf_data; } ;


 size_t E1000_VT_MSGINFO_MASK ;
 size_t E1000_VT_MSGINFO_SHIFT ;
 int igb_set_rx_mode (int ) ;

__attribute__((used)) static int igb_set_vf_multicasts(struct igb_adapter *adapter,
      u32 *msgbuf, u32 vf)
{
 int n = (msgbuf[0] & E1000_VT_MSGINFO_MASK) >> E1000_VT_MSGINFO_SHIFT;
 u16 *hash_list = (u16 *)&msgbuf[1];
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];
 int i;





 vf_data->num_vf_mc_hashes = n;


 if (n > 30)
  n = 30;


 for (i = 0; i < n; i++)
  vf_data->vf_mc_hashes[i] = hash_list[i];


 igb_set_rx_mode(adapter->netdev);

 return 0;
}
