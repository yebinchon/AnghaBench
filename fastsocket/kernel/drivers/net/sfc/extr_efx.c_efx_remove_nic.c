
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* remove ) (struct efx_nic*) ;} ;


 int drv ;
 int efx_remove_interrupts (struct efx_nic*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_remove_nic(struct efx_nic *efx)
{
 netif_dbg(efx, drv, efx->net_dev, "destroying NIC\n");

 efx_remove_interrupts(efx);
 efx->type->remove(efx);
}
