
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_txq_info {int tqi_burst_time; int tqi_cw_max; int tqi_cw_min; int tqi_aifs; } ;
struct TYPE_3__ {scalar_t__ q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {int lock; TYPE_2__ ah_capabilities; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,scalar_t__,int ,int ,int ,int) ;
 int ATH5K_DEBUG_ANY ;
 int ATH5K_ERR (struct ath5k_hw*,char*,scalar_t__) ;
 int EIO ;
 int ath5k_hw_get_tx_queueprops (struct ath5k_hw*,scalar_t__,struct ath5k_txq_info*) ;
 int ath5k_hw_reset_tx_queue (struct ath5k_hw*,scalar_t__) ;
 scalar_t__ ath5k_hw_set_tx_queueprops (struct ath5k_hw*,scalar_t__,struct ath5k_txq_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath5k_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
       const struct ieee80211_tx_queue_params *params)
{
 struct ath5k_hw *ah = hw->priv;
 struct ath5k_txq_info qi;
 int ret = 0;

 if (queue >= ah->ah_capabilities.cap_queues.q_tx_num)
  return 0;

 mutex_lock(&ah->lock);

 ath5k_hw_get_tx_queueprops(ah, queue, &qi);

 qi.tqi_aifs = params->aifs;
 qi.tqi_cw_min = params->cw_min;
 qi.tqi_cw_max = params->cw_max;
 qi.tqi_burst_time = params->txop * 32;

 ATH5K_DBG(ah, ATH5K_DEBUG_ANY,
    "Configure tx [queue %d],  "
    "aifs: %d, cw_min: %d, cw_max: %d, txop: %d\n",
    queue, params->aifs, params->cw_min,
    params->cw_max, params->txop);

 if (ath5k_hw_set_tx_queueprops(ah, queue, &qi)) {
  ATH5K_ERR(ah,
     "Unable to update hardware queue %u!\n", queue);
  ret = -EIO;
 } else
  ath5k_hw_reset_tx_queue(ah, queue);

 mutex_unlock(&ah->lock);

 return ret;
}
