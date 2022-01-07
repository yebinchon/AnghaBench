
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct il_scale_tbl_info {int is_ht40; int current_rate; scalar_t__ is_SGI; int max_search; scalar_t__ action; int lq_type; int is_dup; } ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int is_green; int active_siso_rate; int is_dup; } ;
struct TYPE_2__ {int ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_conf {int dummy; } ;
typedef int s32 ;


 int D_RATE (char*,...) ;
 int IL_MAX_SEARCH ;
 int LQ_SISO ;
 int RATE_INVALID ;
 int conf_is_ht (struct ieee80211_conf*) ;
 int il4965_rate_n_flags_from_tbl (struct il_priv*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_get_best_rate (struct il_priv*,struct il_lq_sta*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_set_expected_tpt_table (struct il_lq_sta*,struct il_scale_tbl_info*) ;
 scalar_t__ il_is_ht40_tx_allowed (struct il_priv*,TYPE_1__*) ;

__attribute__((used)) static int
il4965_rs_switch_to_siso(struct il_priv *il, struct il_lq_sta *lq_sta,
    struct ieee80211_conf *conf, struct ieee80211_sta *sta,
    struct il_scale_tbl_info *tbl, int idx)
{
 u16 rate_mask;
 u8 is_green = lq_sta->is_green;
 s32 rate;

 if (!conf_is_ht(conf) || !sta->ht_cap.ht_supported)
  return -1;

 D_RATE("LQ: try to switch to SISO\n");

 tbl->is_dup = lq_sta->is_dup;
 tbl->lq_type = LQ_SISO;
 tbl->action = 0;
 tbl->max_search = IL_MAX_SEARCH;
 rate_mask = lq_sta->active_siso_rate;

 if (il_is_ht40_tx_allowed(il, &sta->ht_cap))
  tbl->is_ht40 = 1;
 else
  tbl->is_ht40 = 0;

 if (is_green)
  tbl->is_SGI = 0;

 il4965_rs_set_expected_tpt_table(lq_sta, tbl);
 rate = il4965_rs_get_best_rate(il, lq_sta, tbl, rate_mask, idx);

 D_RATE("LQ: get best rate %d mask %X\n", rate, rate_mask);
 if (rate == RATE_INVALID || !((1 << rate) & rate_mask)) {
  D_RATE("can not switch with idx %d rate mask %x\n", rate,
         rate_mask);
  return -1;
 }
 tbl->current_rate =
     il4965_rate_n_flags_from_tbl(il, tbl, rate, is_green);
 D_RATE("LQ: Switch to new mcs %X idx is green %X\n", tbl->current_rate,
        is_green);
 return 0;
}
