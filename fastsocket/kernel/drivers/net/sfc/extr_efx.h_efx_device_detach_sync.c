
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {struct net_device* net_dev; } ;


 int netif_device_detach (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;

__attribute__((used)) static inline void efx_device_detach_sync(struct efx_nic *efx)
{
 struct net_device *dev = efx->net_dev;





 netif_tx_lock_bh(dev);
 netif_device_detach(dev);
 netif_tx_unlock_bh(dev);
}
