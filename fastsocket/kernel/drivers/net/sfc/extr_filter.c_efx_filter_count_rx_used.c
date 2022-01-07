
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {unsigned int size; TYPE_1__* spec; int used_bitmap; } ;
struct efx_filter_state {int lock; struct efx_filter_table* table; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_2__ {int priority; } ;


 int EFX_FILTER_TABLE_RX_DEF ;
 int EFX_FILTER_TABLE_RX_IP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (unsigned int,int ) ;

u32 efx_filter_count_rx_used(struct efx_nic *efx,
        enum efx_filter_priority priority)
{
 struct efx_filter_state *state = efx->filter_state;
 enum efx_filter_table_id table_id;
 struct efx_filter_table *table;
 unsigned int filter_idx;
 u32 count = 0;

 spin_lock_bh(&state->lock);

 for (table_id = EFX_FILTER_TABLE_RX_IP;
      table_id <= EFX_FILTER_TABLE_RX_DEF;
      table_id++) {
  table = &state->table[table_id];
  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (test_bit(filter_idx, table->used_bitmap) &&
       table->spec[filter_idx].priority == priority)
    ++count;
  }
 }

 spin_unlock_bh(&state->lock);

 return count;
}
