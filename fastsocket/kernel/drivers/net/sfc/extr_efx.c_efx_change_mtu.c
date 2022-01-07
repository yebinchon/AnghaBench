
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct efx_nic {int net_dev; int mac_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* reconfigure_mac ) (struct efx_nic*) ;} ;


 int EFX_MAX_MTU ;
 int EINVAL ;
 int drv ;
 int efx_check_disabled (struct efx_nic*) ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_start_all (struct efx_nic*) ;
 int efx_stop_all (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int) ;
 int netif_device_attach (int ) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static int efx_change_mtu(struct net_device *net_dev, int new_mtu)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;

 rc = efx_check_disabled(efx);
 if (rc)
  return rc;
 if (new_mtu > EFX_MAX_MTU)
  return -EINVAL;

 netif_dbg(efx, drv, efx->net_dev, "changing MTU to %d\n", new_mtu);

 efx_device_detach_sync(efx);
 efx_stop_all(efx);

 mutex_lock(&efx->mac_lock);
 net_dev->mtu = new_mtu;
 efx->type->reconfigure_mac(efx);
 mutex_unlock(&efx->mac_lock);

 efx_start_all(efx);
 netif_device_attach(efx->net_dev);
 return 0;
}
