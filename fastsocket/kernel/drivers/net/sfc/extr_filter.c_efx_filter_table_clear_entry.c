
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_filter_table {scalar_t__ id; unsigned int step; scalar_t__ offset; int * spec; int used; int used_bitmap; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_FILTER_TABLE_RX_DEF ;
 int __clear_bit (unsigned int,int ) ;
 int efx_filter_push_rx_config (struct efx_nic*) ;
 int efx_filter_reset_rx_def (struct efx_nic*,unsigned int) ;
 int efx_writeo (struct efx_nic*,int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static void efx_filter_table_clear_entry(struct efx_nic *efx,
      struct efx_filter_table *table,
      unsigned int filter_idx)
{
 static efx_oword_t filter;

 if (table->id == EFX_FILTER_TABLE_RX_DEF) {

  efx_filter_reset_rx_def(efx, filter_idx);
  efx_filter_push_rx_config(efx);
 } else if (test_bit(filter_idx, table->used_bitmap)) {
  __clear_bit(filter_idx, table->used_bitmap);
  --table->used;
  memset(&table->spec[filter_idx], 0, sizeof(table->spec[0]));

  efx_writeo(efx, &filter,
      table->offset + table->step * filter_idx);
 }
}
