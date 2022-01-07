
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 int EFX_FILTER_TABLE_RX_IP ;
 int EFX_FILTER_TABLE_RX_MAC ;
 int efx_filter_table_clear (struct efx_nic*,int ,int) ;

void efx_filter_clear_rx(struct efx_nic *efx, enum efx_filter_priority priority)
{
 efx_filter_table_clear(efx, EFX_FILTER_TABLE_RX_IP, priority);
 efx_filter_table_clear(efx, EFX_FILTER_TABLE_RX_MAC, priority);
}
