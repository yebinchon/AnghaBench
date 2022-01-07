
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int rx_scatter; struct efx_filter_state* filter_state; } ;
struct efx_filter_table {int* search_depth; TYPE_1__* spec; scalar_t__ size; } ;
struct efx_filter_state {struct efx_filter_table* table; } ;
typedef int efx_oword_t ;
struct TYPE_2__ {int dmaq_id; int flags; } ;


 int EFX_FILTER_FLAG_RX_RSS ;
 int EFX_FILTER_FLAG_RX_SCATTER ;
 size_t EFX_FILTER_INDEX_MC_DEF ;
 size_t EFX_FILTER_INDEX_UC_DEF ;
 size_t EFX_FILTER_MAC_FULL ;
 size_t EFX_FILTER_MAC_WILD ;
 size_t EFX_FILTER_TABLE_RX_DEF ;
 size_t EFX_FILTER_TABLE_RX_IP ;
 size_t EFX_FILTER_TABLE_RX_MAC ;
 size_t EFX_FILTER_TCP_FULL ;
 size_t EFX_FILTER_TCP_WILD ;
 size_t EFX_FILTER_UDP_FULL ;
 size_t EFX_FILTER_UDP_WILD ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FILTER_CTL_SRCH_FUDGE_FULL ;
 int FILTER_CTL_SRCH_FUDGE_WILD ;
 int FRF_BZ_SCATTER_ENBL_NO_MATCH_Q ;
 int FRF_BZ_TCP_FULL_SRCH_LIMIT ;
 int FRF_BZ_TCP_WILD_SRCH_LIMIT ;
 int FRF_BZ_UDP_FULL_SRCH_LIMIT ;
 int FRF_BZ_UDP_WILD_SRCH_LIMIT ;
 int FRF_CZ_ETHERNET_FULL_SEARCH_LIMIT ;
 int FRF_CZ_ETHERNET_WILDCARD_SEARCH_LIMIT ;
 int FRF_CZ_MULTICAST_NOMATCH_Q_ID ;
 int FRF_CZ_MULTICAST_NOMATCH_RSS_ENABLED ;
 int FRF_CZ_UNICAST_NOMATCH_Q_ID ;
 int FRF_CZ_UNICAST_NOMATCH_RSS_ENABLED ;
 int FR_BZ_RX_FILTER_CTL ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void efx_filter_push_rx_config(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 struct efx_filter_table *table;
 efx_oword_t filter_ctl;

 efx_reado(efx, &filter_ctl, FR_BZ_RX_FILTER_CTL);

 table = &state->table[EFX_FILTER_TABLE_RX_IP];
 EFX_SET_OWORD_FIELD(filter_ctl, FRF_BZ_TCP_FULL_SRCH_LIMIT,
       table->search_depth[EFX_FILTER_TCP_FULL] +
       FILTER_CTL_SRCH_FUDGE_FULL);
 EFX_SET_OWORD_FIELD(filter_ctl, FRF_BZ_TCP_WILD_SRCH_LIMIT,
       table->search_depth[EFX_FILTER_TCP_WILD] +
       FILTER_CTL_SRCH_FUDGE_WILD);
 EFX_SET_OWORD_FIELD(filter_ctl, FRF_BZ_UDP_FULL_SRCH_LIMIT,
       table->search_depth[EFX_FILTER_UDP_FULL] +
       FILTER_CTL_SRCH_FUDGE_FULL);
 EFX_SET_OWORD_FIELD(filter_ctl, FRF_BZ_UDP_WILD_SRCH_LIMIT,
       table->search_depth[EFX_FILTER_UDP_WILD] +
       FILTER_CTL_SRCH_FUDGE_WILD);

 table = &state->table[EFX_FILTER_TABLE_RX_MAC];
 if (table->size) {
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_ETHERNET_FULL_SEARCH_LIMIT,
   table->search_depth[EFX_FILTER_MAC_FULL] +
   FILTER_CTL_SRCH_FUDGE_FULL);
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_ETHERNET_WILDCARD_SEARCH_LIMIT,
   table->search_depth[EFX_FILTER_MAC_WILD] +
   FILTER_CTL_SRCH_FUDGE_WILD);
 }

 table = &state->table[EFX_FILTER_TABLE_RX_DEF];
 if (table->size) {
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_UNICAST_NOMATCH_Q_ID,
   table->spec[EFX_FILTER_INDEX_UC_DEF].dmaq_id);
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_UNICAST_NOMATCH_RSS_ENABLED,
   !!(table->spec[EFX_FILTER_INDEX_UC_DEF].flags &
      EFX_FILTER_FLAG_RX_RSS));
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_MULTICAST_NOMATCH_Q_ID,
   table->spec[EFX_FILTER_INDEX_MC_DEF].dmaq_id);
  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_CZ_MULTICAST_NOMATCH_RSS_ENABLED,
   !!(table->spec[EFX_FILTER_INDEX_MC_DEF].flags &
      EFX_FILTER_FLAG_RX_RSS));





  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_BZ_SCATTER_ENBL_NO_MATCH_Q,
   !!(table->spec[EFX_FILTER_INDEX_UC_DEF].flags &
      table->spec[EFX_FILTER_INDEX_MC_DEF].flags &
      EFX_FILTER_FLAG_RX_SCATTER));
 } else if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0) {





  EFX_SET_OWORD_FIELD(
   filter_ctl, FRF_BZ_SCATTER_ENBL_NO_MATCH_Q,
   efx->rx_scatter);
 }

 efx_writeo(efx, &filter_ctl, FR_BZ_RX_FILTER_CTL);
}
