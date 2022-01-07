
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {struct ath9k_tx_queue_info* txq; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {scalar_t__ tqi_type; int tqi_readyTime; int tqi_burstTime; int tqi_cbrOverflowLimit; int tqi_cbrPeriod; int tqi_lgretry; int tqi_shretry; int tqi_cwmax; int tqi_cwmin; int tqi_aifs; int tqi_priority; int tqi_qflags; int tqi_subtype; int tqi_ver; } ;


 scalar_t__ ATH9K_TX_QUEUE_INACTIVE ;
 int QUEUE ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;

bool ath9k_hw_get_txq_props(struct ath_hw *ah, int q,
       struct ath9k_tx_queue_info *qinfo)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_tx_queue_info *qi;

 qi = &ah->txq[q];
 if (qi->tqi_type == ATH9K_TX_QUEUE_INACTIVE) {
  ath_dbg(common, QUEUE,
   "Get TXQ properties, inactive queue: %u\n", q);
  return 0;
 }

 qinfo->tqi_qflags = qi->tqi_qflags;
 qinfo->tqi_ver = qi->tqi_ver;
 qinfo->tqi_subtype = qi->tqi_subtype;
 qinfo->tqi_qflags = qi->tqi_qflags;
 qinfo->tqi_priority = qi->tqi_priority;
 qinfo->tqi_aifs = qi->tqi_aifs;
 qinfo->tqi_cwmin = qi->tqi_cwmin;
 qinfo->tqi_cwmax = qi->tqi_cwmax;
 qinfo->tqi_shretry = qi->tqi_shretry;
 qinfo->tqi_lgretry = qi->tqi_lgretry;
 qinfo->tqi_cbrPeriod = qi->tqi_cbrPeriod;
 qinfo->tqi_cbrOverflowLimit = qi->tqi_cbrOverflowLimit;
 qinfo->tqi_burstTime = qi->tqi_burstTime;
 qinfo->tqi_readyTime = qi->tqi_readyTime;

 return 1;
}
