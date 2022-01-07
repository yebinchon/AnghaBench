
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int IL_ERR (char*,scalar_t__,scalar_t__) ;
 scalar_t__ TID_MAX_LOAD_COUNT ;
 int il4965_rs_tl_turn_on_agg_for_tid (struct il_priv*,struct il_lq_sta*,scalar_t__,struct ieee80211_sta*) ;

__attribute__((used)) static void
il4965_rs_tl_turn_on_agg(struct il_priv *il, u8 tid, struct il_lq_sta *lq_data,
    struct ieee80211_sta *sta)
{
 if (tid < TID_MAX_LOAD_COUNT)
  il4965_rs_tl_turn_on_agg_for_tid(il, lq_data, tid, sta);
 else
  IL_ERR("tid exceeds max load count: %d/%d\n", tid,
         TID_MAX_LOAD_COUNT);
}
