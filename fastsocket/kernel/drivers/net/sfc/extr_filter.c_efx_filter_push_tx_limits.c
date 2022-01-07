
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {scalar_t__* search_depth; scalar_t__ size; } ;
struct efx_filter_state {struct efx_filter_table* table; } ;
typedef int efx_oword_t ;


 size_t EFX_FILTER_MAC_FULL ;
 size_t EFX_FILTER_MAC_WILD ;
 size_t EFX_FILTER_TABLE_TX_MAC ;
 int EFX_SET_OWORD_FIELD (int ,int ,scalar_t__) ;
 scalar_t__ FILTER_CTL_SRCH_FUDGE_FULL ;
 scalar_t__ FILTER_CTL_SRCH_FUDGE_WILD ;
 int FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE ;
 int FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE ;
 int FR_AZ_TX_CFG ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void efx_filter_push_tx_limits(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 struct efx_filter_table *table;
 efx_oword_t tx_cfg;

 efx_reado(efx, &tx_cfg, FR_AZ_TX_CFG);

 table = &state->table[EFX_FILTER_TABLE_TX_MAC];
 if (table->size) {
  EFX_SET_OWORD_FIELD(
   tx_cfg, FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE,
   table->search_depth[EFX_FILTER_MAC_FULL] +
   FILTER_CTL_SRCH_FUDGE_FULL);
  EFX_SET_OWORD_FIELD(
   tx_cfg, FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE,
   table->search_depth[EFX_FILTER_MAC_WILD] +
   FILTER_CTL_SRCH_FUDGE_WILD);
 }

 efx_writeo(efx, &tx_cfg, FR_AZ_TX_CFG);
}
