
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int n_rx_channels; scalar_t__ rx_scatter; struct efx_filter_state* filter_state; } ;
struct efx_filter_table {int* used_bitmap; struct efx_filter_spec* spec; } ;
struct efx_filter_state {struct efx_filter_table* table; } ;
struct efx_filter_spec {scalar_t__ type; } ;
typedef enum efx_filter_flags { ____Placeholder_efx_filter_flags } efx_filter_flags ;


 int EFX_FILTER_FLAG_RX_RSS ;
 int EFX_FILTER_FLAG_RX_SCATTER ;
 int EFX_FILTER_PRI_MANUAL ;
 size_t EFX_FILTER_TABLE_RX_DEF ;
 scalar_t__ EFX_FILTER_UC_DEF ;
 int efx_filter_init_rx (struct efx_filter_spec*,int ,int,int ) ;

__attribute__((used)) static void efx_filter_reset_rx_def(struct efx_nic *efx, unsigned filter_idx)
{
 struct efx_filter_state *state = efx->filter_state;
 struct efx_filter_table *table = &state->table[EFX_FILTER_TABLE_RX_DEF];
 struct efx_filter_spec *spec = &table->spec[filter_idx];
 enum efx_filter_flags flags = 0;




 if (efx->n_rx_channels > 1)
  flags |= EFX_FILTER_FLAG_RX_RSS;

 if (efx->rx_scatter)
  flags |= EFX_FILTER_FLAG_RX_SCATTER;

 efx_filter_init_rx(spec, EFX_FILTER_PRI_MANUAL, flags, 0);
 spec->type = EFX_FILTER_UC_DEF + filter_idx;
 table->used_bitmap[0] |= 1 << filter_idx;
}
