
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* remove_port ) (struct efx_nic*) ;} ;


 int drv ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_remove_port(struct efx_nic *efx)
{
 netif_dbg(efx, drv, efx->net_dev, "destroying port\n");

 efx->type->remove_port(efx);
}
