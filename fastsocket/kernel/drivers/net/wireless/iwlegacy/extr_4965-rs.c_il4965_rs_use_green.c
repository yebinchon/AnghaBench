
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int non_gf_sta_present; } ;
struct il_priv {TYPE_2__ ht; } ;
struct TYPE_3__ {int cap; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;


 int IEEE80211_HT_CAP_GRN_FLD ;

__attribute__((used)) static bool
il4965_rs_use_green(struct il_priv *il, struct ieee80211_sta *sta)
{
 return (sta->ht_cap.cap & IEEE80211_HT_CAP_GRN_FLD) &&
        !il->ht.non_gf_sta_present;
}
