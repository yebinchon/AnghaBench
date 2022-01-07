
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {scalar_t__ n_rx_channels; scalar_t__ rx_scatter; struct efx_filter_state* filter_state; } ;
struct efx_filter_table {unsigned int size; unsigned int step; scalar_t__ offset; TYPE_1__* spec; int used_bitmap; } ;
struct efx_filter_state {int lock; struct efx_filter_table* table; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
typedef int efx_oword_t ;
struct TYPE_2__ {scalar_t__ dmaq_id; int flags; } ;


 int EFX_FILTER_FLAG_RX_SCATTER ;
 int EFX_FILTER_TABLE_RX_DEF ;
 int EFX_FILTER_TABLE_RX_IP ;
 int efx_filter_build (int *,TYPE_1__*) ;
 int efx_filter_push_rx_config (struct efx_nic*) ;
 int efx_writeo (struct efx_nic*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (unsigned int,int ) ;

void efx_filter_update_rx_scatter(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 enum efx_filter_table_id table_id;
 struct efx_filter_table *table;
 efx_oword_t filter;
 unsigned int filter_idx;

 spin_lock_bh(&state->lock);

 for (table_id = EFX_FILTER_TABLE_RX_IP;
      table_id <= EFX_FILTER_TABLE_RX_DEF;
      table_id++) {
  table = &state->table[table_id];

  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (!test_bit(filter_idx, table->used_bitmap) ||
       table->spec[filter_idx].dmaq_id >=
       efx->n_rx_channels)
    continue;

   if (efx->rx_scatter)
    table->spec[filter_idx].flags |=
     EFX_FILTER_FLAG_RX_SCATTER;
   else
    table->spec[filter_idx].flags &=
     ~EFX_FILTER_FLAG_RX_SCATTER;

   if (table_id == EFX_FILTER_TABLE_RX_DEF)

    continue;

   efx_filter_build(&filter, &table->spec[filter_idx]);
   efx_writeo(efx, &filter,
       table->offset + table->step * filter_idx);
  }
 }

 efx_filter_push_rx_config(efx);

 spin_unlock_bh(&state->lock);
}
