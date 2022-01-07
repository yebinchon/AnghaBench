
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {unsigned int size; int used_bitmap; struct efx_filter_spec* spec; } ;
struct efx_filter_state {int lock; struct efx_filter_table* table; } ;
struct efx_filter_spec {int priority; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 unsigned int EFX_FILTER_TABLE_COUNT ;
 int ENOENT ;
 int efx_filter_id_flags (int ) ;
 unsigned int efx_filter_id_index (int ) ;
 int efx_filter_id_table_id (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (unsigned int,int ) ;

int efx_filter_get_filter_safe(struct efx_nic *efx,
          enum efx_filter_priority priority,
          u32 filter_id, struct efx_filter_spec *spec_buf)
{
 struct efx_filter_state *state = efx->filter_state;
 enum efx_filter_table_id table_id;
 struct efx_filter_table *table;
 struct efx_filter_spec *spec;
 unsigned int filter_idx;
 u8 filter_flags;
 int rc;

 table_id = efx_filter_id_table_id(filter_id);
 if ((unsigned int)table_id >= EFX_FILTER_TABLE_COUNT)
  return -ENOENT;
 table = &state->table[table_id];

 filter_idx = efx_filter_id_index(filter_id);
 if (filter_idx >= table->size)
  return -ENOENT;
 spec = &table->spec[filter_idx];

 filter_flags = efx_filter_id_flags(filter_id);

 spin_lock_bh(&state->lock);

 if (test_bit(filter_idx, table->used_bitmap) &&
     spec->priority == priority) {
  *spec_buf = *spec;
  rc = 0;
 } else {
  rc = -ENOENT;
 }

 spin_unlock_bh(&state->lock);

 return rc;
}
