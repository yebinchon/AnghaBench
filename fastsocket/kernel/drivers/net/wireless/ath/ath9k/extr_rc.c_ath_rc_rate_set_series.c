
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee80211_tx_rate_control {TYPE_1__* hw; scalar_t__ rts; } ;
struct ieee80211_tx_rate {size_t count; int flags; int idx; } ;
struct ath_rate_table {TYPE_2__* info; } ;
struct TYPE_4__ {int phy; int ratecode; } ;
struct TYPE_3__ {int conf; } ;


 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 scalar_t__ WLAN_RC_PHY_40 (int ) ;
 scalar_t__ WLAN_RC_PHY_HT (int ) ;
 scalar_t__ WLAN_RC_PHY_SGI (int ) ;
 scalar_t__ conf_is_ht40 (int *) ;

__attribute__((used)) static void ath_rc_rate_set_series(const struct ath_rate_table *rate_table,
       struct ieee80211_tx_rate *rate,
       struct ieee80211_tx_rate_control *txrc,
       u8 tries, u8 rix, int rtsctsenable)
{
 rate->count = tries;
 rate->idx = rate_table->info[rix].ratecode;

 if (txrc->rts || rtsctsenable)
  rate->flags |= IEEE80211_TX_RC_USE_RTS_CTS;

 if (WLAN_RC_PHY_HT(rate_table->info[rix].phy)) {
  rate->flags |= IEEE80211_TX_RC_MCS;
  if (WLAN_RC_PHY_40(rate_table->info[rix].phy) &&
      conf_is_ht40(&txrc->hw->conf))
   rate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
  if (WLAN_RC_PHY_SGI(rate_table->info[rix].phy))
   rate->flags |= IEEE80211_TX_RC_SHORT_GI;
 }
}
