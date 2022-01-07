
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rts_cts_rate_idx; TYPE_2__* vif; TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_bss_conf {int basic_rates; } ;
struct ath_softc {int dummy; } ;
struct ath_rate_table {int dummy; } ;
struct TYPE_5__ {struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_TX_RC_MCS ;
 int __ffs (int ) ;

__attribute__((used)) static void ath_rc_rate_set_rtscts(struct ath_softc *sc,
       const struct ath_rate_table *rate_table,
       struct ieee80211_tx_info *tx_info)
{
 struct ieee80211_bss_conf *bss_conf;

 if (!tx_info->control.vif)
  return;



 if (!(tx_info->control.rates[0].flags & IEEE80211_TX_RC_MCS))
  return;

 bss_conf = &tx_info->control.vif->bss_conf;

 if (!bss_conf->basic_rates)
  return;




 tx_info->control.rts_cts_rate_idx = __ffs(bss_conf->basic_rates);
}
