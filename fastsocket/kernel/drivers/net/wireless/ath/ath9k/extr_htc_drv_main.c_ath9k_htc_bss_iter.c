
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_bss_conf {int bssid; int aid; scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_bss_conf bss_conf; } ;
struct ath_common {int curbssid; int curaid; } ;
struct ath9k_htc_priv {int ah; } ;


 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 struct ath_common* ath9k_hw_common (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ath9k_htc_bss_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *)data;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 if ((vif->type == NL80211_IFTYPE_STATION) && bss_conf->assoc) {
  common->curaid = bss_conf->aid;
  memcpy(common->curbssid, bss_conf->bssid, ETH_ALEN);
 }
}
