
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_remove_channels (struct efx_nic*) ;
 int efx_remove_filters (struct efx_nic*) ;
 int efx_remove_nic (struct efx_nic*) ;
 int efx_remove_port (struct efx_nic*) ;

__attribute__((used)) static void efx_remove_all(struct efx_nic *efx)
{
 efx_remove_channels(efx);
 efx_remove_filters(efx);
 efx_remove_port(efx);
 efx_remove_nic(efx);
}
