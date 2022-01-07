
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int port_enabled; int mac_lock; TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* reconfigure_mac ) (struct efx_nic*) ;} ;


 int BUG_ON (int) ;
 int ifup ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_start_port(struct efx_nic *efx)
{
 netif_dbg(efx, ifup, efx->net_dev, "start port\n");
 BUG_ON(efx->port_enabled);

 mutex_lock(&efx->mac_lock);
 efx->port_enabled = 1;



 efx->type->reconfigure_mac(efx);

 mutex_unlock(&efx->mac_lock);
}
