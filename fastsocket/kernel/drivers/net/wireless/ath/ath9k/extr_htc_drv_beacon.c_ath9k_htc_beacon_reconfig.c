
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_beacon_config {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {TYPE_1__* ah; struct htc_beacon_config cur_beacon_conf; } ;
struct TYPE_2__ {int opmode; } ;


 int CONFIG ;



 int ath9k_htc_beacon_config_adhoc (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 int ath9k_htc_beacon_config_ap (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 int ath9k_htc_beacon_config_sta (struct ath9k_htc_priv*,struct htc_beacon_config*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_htc_beacon_reconfig(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct htc_beacon_config *cur_conf = &priv->cur_beacon_conf;

 switch (priv->ah->opmode) {
 case 128:
  ath9k_htc_beacon_config_sta(priv, cur_conf);
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
