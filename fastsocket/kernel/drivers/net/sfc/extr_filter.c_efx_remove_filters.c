
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_state {struct efx_filter_state* rps_flow_id; TYPE_1__* table; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
struct TYPE_2__ {int spec; struct efx_filter_state* used_bitmap; } ;


 int EFX_FILTER_TABLE_COUNT ;
 int kfree (struct efx_filter_state*) ;
 int vfree (int ) ;

void efx_remove_filters(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 enum efx_filter_table_id table_id;

 for (table_id = 0; table_id < EFX_FILTER_TABLE_COUNT; table_id++) {
  kfree(state->table[table_id].used_bitmap);
  vfree(state->table[table_id].spec);
 }



 kfree(state);
}
