
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_tx_rate {int flags; int idx; } ;
struct ath_rate_table {TYPE_1__* info; } ;
struct ath_rate_priv {int max_valid_rate; int* valid_rate_index; struct ath_rate_table* rate_table; } ;
struct TYPE_2__ {scalar_t__ ratecode; int phy; } ;


 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 scalar_t__ WLAN_RC_PHY_HT (int ) ;

__attribute__((used)) static int ath_rc_get_rateindex(struct ath_rate_priv *ath_rc_priv,
    struct ieee80211_tx_rate *rate)
{
 const struct ath_rate_table *rate_table = ath_rc_priv->rate_table;
 int rix, i, idx = 0;

 if (!(rate->flags & IEEE80211_TX_RC_MCS))
  return rate->idx;

 for (i = 0; i < ath_rc_priv->max_valid_rate; i++) {
  idx = ath_rc_priv->valid_rate_index[i];

  if (WLAN_RC_PHY_HT(rate_table->info[idx].phy) &&
      rate_table->info[idx].ratecode == rate->idx)
   break;
 }

 rix = idx;

 if (rate->flags & IEEE80211_TX_RC_SHORT_GI)
  rix++;

 return rix;
}
