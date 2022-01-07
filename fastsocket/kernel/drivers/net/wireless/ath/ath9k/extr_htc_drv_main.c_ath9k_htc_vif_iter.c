
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_bss_conf {scalar_t__ assoc; scalar_t__ enable_beacon; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_bss_conf bss_conf; } ;
struct ath9k_htc_priv {int reconfig_beacon; int rearm_ani; } ;


 scalar_t__ NL80211_IFTYPE_AP ;

__attribute__((used)) static void ath9k_htc_vif_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath9k_htc_priv *priv = data;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 if ((vif->type == NL80211_IFTYPE_AP) && bss_conf->enable_beacon)
  priv->reconfig_beacon = 1;

 if (bss_conf->assoc) {
  priv->rearm_ani = 1;
  priv->reconfig_beacon = 1;
 }
}
