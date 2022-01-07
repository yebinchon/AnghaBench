
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* net_dev; int name; } ;
struct TYPE_2__ {int name; } ;


 int efx_mtd_rename (struct efx_nic*) ;
 int efx_set_channel_names (struct efx_nic*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void efx_update_name(struct efx_nic *efx)
{
 strcpy(efx->name, efx->net_dev->name);
 efx_mtd_rename(efx);
 efx_set_channel_names(efx);
}
