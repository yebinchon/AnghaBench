
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mac_addr; } ;
struct efx_vf {int status_lock; TYPE_1__ addr; } ;
struct efx_nic {int vf_init_count; struct efx_vf* vf; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int __efx_sriov_update_vf_addr (struct efx_vf*) ;
 int memcpy (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

int efx_sriov_set_vf_mac(struct net_device *net_dev, int vf_i, u8 *mac)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_vf *vf;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = efx->vf + vf_i;

 mutex_lock(&vf->status_lock);
 memcpy(vf->addr.mac_addr, mac, ETH_ALEN);
 __efx_sriov_update_vf_addr(vf);
 mutex_unlock(&vf->status_lock);

 return 0;
}
