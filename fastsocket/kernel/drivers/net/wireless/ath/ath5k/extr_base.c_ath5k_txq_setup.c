
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_txq_info {int tqi_subtype; int tqi_flags; int tqi_cw_max; int tqi_cw_min; int tqi_aifs; } ;
struct ath5k_txq {int setup; int qnum; int txq_poll_mark; scalar_t__ txq_stuck; int txq_max; scalar_t__ txq_len; int lock; int q; int * link; } ;
struct ath5k_hw {struct ath5k_txq* txqs; } ;


 int AR5K_TUNE_AIFS ;
 int AR5K_TUNE_CWMAX ;
 int AR5K_TUNE_CWMIN ;
 int AR5K_TXQ_FLAG_TXDESCINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXEOLINT_ENABLE ;
 int ATH5K_TXQ_LEN_MAX ;
 struct ath5k_txq* ERR_PTR (int) ;
 int INIT_LIST_HEAD (int *) ;
 int ath5k_hw_setup_tx_queue (struct ath5k_hw*,int,struct ath5k_txq_info*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ath5k_txq *
ath5k_txq_setup(struct ath5k_hw *ah,
  int qtype, int subtype)
{
 struct ath5k_txq *txq;
 struct ath5k_txq_info qi = {
  .tqi_subtype = subtype,


  .tqi_aifs = AR5K_TUNE_AIFS,
  .tqi_cw_min = AR5K_TUNE_CWMIN,
  .tqi_cw_max = AR5K_TUNE_CWMAX
 };
 int qnum;
 qi.tqi_flags = AR5K_TXQ_FLAG_TXEOLINT_ENABLE |
    AR5K_TXQ_FLAG_TXDESCINT_ENABLE;
 qnum = ath5k_hw_setup_tx_queue(ah, qtype, &qi);
 if (qnum < 0) {




  return ERR_PTR(qnum);
 }
 txq = &ah->txqs[qnum];
 if (!txq->setup) {
  txq->qnum = qnum;
  txq->link = ((void*)0);
  INIT_LIST_HEAD(&txq->q);
  spin_lock_init(&txq->lock);
  txq->setup = 1;
  txq->txq_len = 0;
  txq->txq_max = ATH5K_TXQ_LEN_MAX;
  txq->txq_poll_mark = 0;
  txq->txq_stuck = 0;
 }
 return &ah->txqs[qnum];
}
