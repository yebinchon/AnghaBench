
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_bss_conf {scalar_t__ beacon_int; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_bss_conf bss_conf; } ;
struct htc_beacon_config {scalar_t__ beacon_interval; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int num_ap_vif; int num_sta_vif; int hw; TYPE_1__* ah; struct htc_beacon_config cur_beacon_conf; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;


 int CONFIG ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ath9k_htc_beacon_iter ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int*) ;

__attribute__((used)) static bool ath9k_htc_check_beacon_config(struct ath9k_htc_priv *priv,
       struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct htc_beacon_config *cur_conf = &priv->cur_beacon_conf;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 bool beacon_configured;






 if ((priv->ah->opmode == NL80211_IFTYPE_AP) &&
     (priv->num_ap_vif > 1) &&
     (vif->type == NL80211_IFTYPE_AP) &&
     (cur_conf->beacon_interval != bss_conf->beacon_int)) {
  ath_dbg(common, CONFIG,
   "Changing beacon interval of multiple AP interfaces !\n");
  return 0;
 }





 if (priv->num_ap_vif &&
     (vif->type != NL80211_IFTYPE_AP)) {
  ath_dbg(common, CONFIG,
   "HW in AP mode, cannot set STA beacon parameters\n");
  return 0;
 }





 if ((priv->ah->opmode == NL80211_IFTYPE_STATION) &&
     (priv->num_sta_vif > 1) &&
     (vif->type == NL80211_IFTYPE_STATION)) {
  beacon_configured = 0;
  ieee80211_iterate_active_interfaces_atomic(
   priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
   ath9k_htc_beacon_iter, &beacon_configured);

  if (beacon_configured) {
   ath_dbg(common, CONFIG,
    "Beacon already configured for a station interface\n");
   return 0;
  }
 }

 return 1;
}
