
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int rx_dc_base; int tx_dc_base; } ;



__attribute__((used)) static void falcon_dimension_resources(struct efx_nic *efx)
{
 efx->rx_dc_base = 0x20000;
 efx->tx_dc_base = 0x26000;
}
