
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int port_enabled; int net_dev; int mac_lock; } ;


 int ifdown ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_addr_lock_bh (int ) ;
 int netif_addr_unlock_bh (int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;

__attribute__((used)) static void efx_stop_port(struct efx_nic *efx)
{
 netif_dbg(efx, ifdown, efx->net_dev, "stop port\n");

 mutex_lock(&efx->mac_lock);
 efx->port_enabled = 0;
 mutex_unlock(&efx->mac_lock);


 netif_addr_lock_bh(efx->net_dev);
 netif_addr_unlock_bh(efx->net_dev);
}
