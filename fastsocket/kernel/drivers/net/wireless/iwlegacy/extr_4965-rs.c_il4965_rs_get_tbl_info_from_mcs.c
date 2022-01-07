
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct il_scale_tbl_info {int is_SGI; int is_ht40; int is_dup; int ant_type; int lq_type; int max_search; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int EINVAL ;
 int IEEE80211_BAND_5GHZ ;
 int IL_MAX_SEARCH ;
 int LQ_A ;
 int LQ_G ;
 int LQ_MIMO2 ;
 int LQ_NONE ;
 int LQ_SISO ;
 int RATE_INVALID ;
 int const RATE_MCS_ANT_ABC_MSK ;
 int RATE_MCS_ANT_POS ;
 int const RATE_MCS_DUP_MSK ;
 int const RATE_MCS_HT40_MSK ;
 int const RATE_MCS_HT_MSK ;
 int const RATE_MCS_SGI_MSK ;
 int RATE_SISO_60M_PLCP ;
 int il4965_get_il4965_num_of_ant_from_rate (int const) ;
 int il4965_hwrate_to_plcp_idx (int const) ;
 int il4965_rs_extract_rate (int const) ;
 int memset (struct il_scale_tbl_info*,int ,int) ;

__attribute__((used)) static int
il4965_rs_get_tbl_info_from_mcs(const u32 rate_n_flags,
    enum ieee80211_band band,
    struct il_scale_tbl_info *tbl, int *rate_idx)
{
 u32 ant_msk = (rate_n_flags & RATE_MCS_ANT_ABC_MSK);
 u8 il4965_num_of_ant =
     il4965_get_il4965_num_of_ant_from_rate(rate_n_flags);
 u8 mcs;

 memset(tbl, 0, sizeof(struct il_scale_tbl_info));
 *rate_idx = il4965_hwrate_to_plcp_idx(rate_n_flags);

 if (*rate_idx == RATE_INVALID) {
  *rate_idx = -1;
  return -EINVAL;
 }
 tbl->is_SGI = 0;
 tbl->is_ht40 = 0;
 tbl->is_dup = 0;
 tbl->ant_type = (ant_msk >> RATE_MCS_ANT_POS);
 tbl->lq_type = LQ_NONE;
 tbl->max_search = IL_MAX_SEARCH;


 if (!(rate_n_flags & RATE_MCS_HT_MSK)) {
  if (il4965_num_of_ant == 1) {
   if (band == IEEE80211_BAND_5GHZ)
    tbl->lq_type = LQ_A;
   else
    tbl->lq_type = LQ_G;
  }

 } else {
  if (rate_n_flags & RATE_MCS_SGI_MSK)
   tbl->is_SGI = 1;

  if ((rate_n_flags & RATE_MCS_HT40_MSK) ||
      (rate_n_flags & RATE_MCS_DUP_MSK))
   tbl->is_ht40 = 1;

  if (rate_n_flags & RATE_MCS_DUP_MSK)
   tbl->is_dup = 1;

  mcs = il4965_rs_extract_rate(rate_n_flags);


  if (mcs <= RATE_SISO_60M_PLCP) {
   if (il4965_num_of_ant == 1)
    tbl->lq_type = LQ_SISO;

  } else {
   if (il4965_num_of_ant == 2)
    tbl->lq_type = LQ_MIMO2;
  }
 }
 return 0;
}
