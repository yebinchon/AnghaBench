
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct il_scale_tbl_info {int lq_type; int max_search; scalar_t__ is_SGI; scalar_t__ is_ht40; int ant_type; } ;
struct TYPE_2__ {int valid_tx_ant; } ;
struct il_priv {TYPE_1__ hw_params; } ;
struct il_lq_sta {size_t is_green; scalar_t__ band; int supp_rates; struct il_priv* drv; } ;
typedef int s32 ;


 scalar_t__ IEEE80211_BAND_5GHZ ;
 int IL_FIRST_OFDM_RATE ;
 int IL_MAX_SEARCH ;
 int LQ_A ;
 int LQ_G ;
 int RATE_INVALID ;
 int il4965_first_antenna (int ) ;
 int il4965_num_of_ant (int ) ;
 int il4965_rate_n_flags_from_tbl (struct il_priv*,struct il_scale_tbl_info*,int,size_t) ;
 int il4965_rs_get_adjacent_rate (struct il_priv*,size_t,int,int ) ;
 int il4965_rs_get_supported_rates (struct il_lq_sta*,int *,int ) ;
 scalar_t__ is_legacy (int ) ;
 size_t* rs_ht_to_legacy ;

__attribute__((used)) static u32
il4965_rs_get_lower_rate(struct il_lq_sta *lq_sta,
    struct il_scale_tbl_info *tbl, u8 scale_idx,
    u8 ht_possible)
{
 s32 low;
 u16 rate_mask;
 u16 high_low;
 u8 switch_to_legacy = 0;
 u8 is_green = lq_sta->is_green;
 struct il_priv *il = lq_sta->drv;




 if (!is_legacy(tbl->lq_type) && (!ht_possible || !scale_idx)) {
  switch_to_legacy = 1;
  scale_idx = rs_ht_to_legacy[scale_idx];
  if (lq_sta->band == IEEE80211_BAND_5GHZ)
   tbl->lq_type = LQ_A;
  else
   tbl->lq_type = LQ_G;

  if (il4965_num_of_ant(tbl->ant_type) > 1)
   tbl->ant_type =
       il4965_first_antenna(il->hw_params.valid_tx_ant);

  tbl->is_ht40 = 0;
  tbl->is_SGI = 0;
  tbl->max_search = IL_MAX_SEARCH;
 }

 rate_mask = il4965_rs_get_supported_rates(lq_sta, ((void*)0), tbl->lq_type);


 if (is_legacy(tbl->lq_type)) {

  if (lq_sta->band == IEEE80211_BAND_5GHZ)
   rate_mask =
       (u16) (rate_mask &
       (lq_sta->supp_rates << IL_FIRST_OFDM_RATE));
  else
   rate_mask = (u16) (rate_mask & lq_sta->supp_rates);
 }


 if (switch_to_legacy && (rate_mask & (1 << scale_idx))) {
  low = scale_idx;
  goto out;
 }

 high_low =
     il4965_rs_get_adjacent_rate(lq_sta->drv, scale_idx, rate_mask,
     tbl->lq_type);
 low = high_low & 0xff;

 if (low == RATE_INVALID)
  low = scale_idx;

out:
 return il4965_rate_n_flags_from_tbl(lq_sta->drv, tbl, low, is_green);
}
