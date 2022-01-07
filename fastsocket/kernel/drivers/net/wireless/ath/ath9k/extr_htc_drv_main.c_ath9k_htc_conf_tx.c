
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_burstTime; int tqi_cwmax; int tqi_cwmin; int tqi_aifs; } ;
struct ath9k_htc_priv {int* hwq_map; int mutex; TYPE_1__* ah; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;


 int CONFIG ;
 size_t IEEE80211_AC_BE ;
 scalar_t__ IEEE80211_NUM_ACS ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int ath9k_htc_beaconq_config (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__,int,int ,int ,int ,int) ;
 int ath_err (struct ath_common*,char*) ;
 int ath_htc_txq_update (struct ath9k_htc_priv*,int,struct ath9k_tx_queue_info*) ;
 int get_hw_qnum (scalar_t__,int*) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_htc_conf_tx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_tx_queue_info qi;
 int ret = 0, qnum;

 if (queue >= IEEE80211_NUM_ACS)
  return 0;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);

 memset(&qi, 0, sizeof(struct ath9k_tx_queue_info));

 qi.tqi_aifs = params->aifs;
 qi.tqi_cwmin = params->cw_min;
 qi.tqi_cwmax = params->cw_max;
 qi.tqi_burstTime = params->txop * 32;

 qnum = get_hw_qnum(queue, priv->hwq_map);

 ath_dbg(common, CONFIG,
  "Configure tx [queue/hwq] [%d/%d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\n",
  queue, qnum, params->aifs, params->cw_min,
  params->cw_max, params->txop);

 ret = ath_htc_txq_update(priv, qnum, &qi);
 if (ret) {
  ath_err(common, "TXQ Update failed\n");
  goto out;
 }

 if ((priv->ah->opmode == NL80211_IFTYPE_ADHOC) &&
     (qnum == priv->hwq_map[IEEE80211_AC_BE]))
      ath9k_htc_beaconq_config(priv);
out:
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}
