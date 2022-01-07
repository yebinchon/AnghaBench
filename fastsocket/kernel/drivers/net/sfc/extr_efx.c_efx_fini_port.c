
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int up; } ;
struct efx_nic {int port_initialized; TYPE_2__ link_state; TYPE_1__* phy_op; int net_dev; } ;
struct TYPE_3__ {int (* fini ) (struct efx_nic*) ;} ;


 int drv ;
 int efx_link_status_changed (struct efx_nic*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_fini_port(struct efx_nic *efx)
{
 netif_dbg(efx, drv, efx->net_dev, "shut down port\n");

 if (!efx->port_initialized)
  return;

 efx->phy_op->fini(efx);
 efx->port_initialized = 0;

 efx->link_state.up = 0;
 efx_link_status_changed(efx);
}
