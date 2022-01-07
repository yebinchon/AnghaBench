
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {scalar_t__ opmode; scalar_t__ slottime; } ;
struct ath9k_tx_queue_info {int tqi_aifs; int tqi_cwmin; scalar_t__ tqi_cwmax; } ;
struct ath9k_htc_priv {int beaconq; int* hwq_map; struct ath_hw* ah; } ;


 scalar_t__ ATH9K_SLOT_TIME_20 ;
 size_t IEEE80211_AC_BE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_get_txq_props (struct ath_hw*,int,struct ath9k_tx_queue_info*) ;
 int ath9k_hw_resettxqueue (struct ath_hw*,int) ;
 int ath9k_hw_set_txq_props (struct ath_hw*,int,struct ath9k_tx_queue_info*) ;
 int ath_err (int ,char*,int) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;

void ath9k_htc_beaconq_config(struct ath9k_htc_priv *priv)
{
 struct ath_hw *ah = priv->ah;
 struct ath9k_tx_queue_info qi, qi_be;

 memset(&qi, 0, sizeof(struct ath9k_tx_queue_info));
 memset(&qi_be, 0, sizeof(struct ath9k_tx_queue_info));

 ath9k_hw_get_txq_props(ah, priv->beaconq, &qi);

 if (priv->ah->opmode == NL80211_IFTYPE_AP) {
  qi.tqi_aifs = 1;
  qi.tqi_cwmin = 0;
  qi.tqi_cwmax = 0;
 } else if (priv->ah->opmode == NL80211_IFTYPE_ADHOC) {
  int qnum = priv->hwq_map[IEEE80211_AC_BE];

  ath9k_hw_get_txq_props(ah, qnum, &qi_be);

  qi.tqi_aifs = qi_be.tqi_aifs;






  if (ah->slottime == ATH9K_SLOT_TIME_20)
   qi.tqi_cwmin = 2*qi_be.tqi_cwmin;
  else
   qi.tqi_cwmin = 4*qi_be.tqi_cwmin;

  qi.tqi_cwmax = qi_be.tqi_cwmax;

 }

 if (!ath9k_hw_set_txq_props(ah, priv->beaconq, &qi)) {
  ath_err(ath9k_hw_common(ah),
   "Unable to update beacon queue %u!\n", priv->beaconq);
 } else {
  ath9k_hw_resettxqueue(ah, priv->beaconq);
 }
}
