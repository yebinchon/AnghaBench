
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_bss_conf {int beacon_int; int dtim_period; } ;
struct ieee80211_vif {int type; scalar_t__ drv_priv; struct ieee80211_bss_conf bss_conf; } ;
struct htc_beacon_config {int beacon_interval; int bmiss_timeout; int dtim_period; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int beacon_configured; } ;
struct ath9k_htc_priv {struct htc_beacon_config cur_beacon_conf; int ah; } ;


 int ATH_DEFAULT_BMISS_LIMIT ;
 int CONFIG ;



 int ath9k_htc_beacon_config_adhoc (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 int ath9k_htc_beacon_config_ap (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 int ath9k_htc_beacon_config_sta (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 int ath9k_htc_check_beacon_config (struct ath9k_htc_priv*,struct ieee80211_vif*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_htc_beacon_config(struct ath9k_htc_priv *priv,
        struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct htc_beacon_config *cur_conf = &priv->cur_beacon_conf;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;

 if (!ath9k_htc_check_beacon_config(priv, vif))
  return;

 cur_conf->beacon_interval = bss_conf->beacon_int;
 if (cur_conf->beacon_interval == 0)
  cur_conf->beacon_interval = 100;

 cur_conf->dtim_period = bss_conf->dtim_period;
 cur_conf->bmiss_timeout =
  ATH_DEFAULT_BMISS_LIMIT * cur_conf->beacon_interval;

 switch (vif->type) {
 case 128:
  ath9k_htc_beacon_config_sta(priv, cur_conf);
  avp->beacon_configured = 1;
  break;
 case 130:
  ath9k_htc_beacon_config_adhoc(priv, cur_conf);
  break;
 case 129:
  ath9k_htc_beacon_config_ap(priv, cur_conf);
  break;
 default:
  ath_dbg(common, CONFIG, "Unsupported beaconing mode\n");
  return;
 }
}
