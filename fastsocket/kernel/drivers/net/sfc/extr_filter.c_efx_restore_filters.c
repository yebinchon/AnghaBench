
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {unsigned int step; unsigned int size; scalar_t__ offset; int * spec; int used_bitmap; } ;
struct efx_filter_state {int lock; struct efx_filter_table* table; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
typedef int efx_oword_t ;


 int EFX_FILTER_TABLE_COUNT ;
 int efx_filter_build (int *,int *) ;
 int efx_filter_push_rx_config (struct efx_nic*) ;
 int efx_filter_push_tx_limits (struct efx_nic*) ;
 int efx_writeo (struct efx_nic*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (unsigned int,int ) ;

void efx_restore_filters(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 enum efx_filter_table_id table_id;
 struct efx_filter_table *table;
 efx_oword_t filter;
 unsigned int filter_idx;

 spin_lock_bh(&state->lock);

 for (table_id = 0; table_id < EFX_FILTER_TABLE_COUNT; table_id++) {
  table = &state->table[table_id];


  if (table->step == 0)
   continue;

  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (!test_bit(filter_idx, table->used_bitmap))
    continue;
   efx_filter_build(&filter, &table->spec[filter_idx]);
   efx_writeo(efx, &filter,
       table->offset + table->step * filter_idx);
  }
 }

 efx_filter_push_rx_config(efx);
 efx_filter_push_tx_limits(efx);

 spin_unlock_bh(&state->lock);
}
