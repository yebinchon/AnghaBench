
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_txq_info {int tqi_cw_min; } ;
struct ath5k_hw {scalar_t__ ah_version; int ah_retry_short; int ah_retry_long; struct ath5k_txq_info* ah_txq; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_DCU_RETRY_LMT_RTS ;
 int AR5K_DCU_RETRY_LMT_STA_DATA ;
 int AR5K_DCU_RETRY_LMT_STA_RTS ;
 int AR5K_NODCU_RETRY_LMT ;
 int AR5K_NODCU_RETRY_LMT_CW_MIN_S ;
 int AR5K_NODCU_RETRY_LMT_LG_RETRY ;
 int AR5K_NODCU_RETRY_LMT_SH_RETRY ;
 int AR5K_NODCU_RETRY_LMT_SLG_RETRY ;
 int AR5K_NODCU_RETRY_LMT_SSH_RETRY ;
 int AR5K_QUEUE_DFS_RETRY_LIMIT (unsigned int) ;
 int AR5K_REG_SM (int ,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int max (int ,int ) ;

void
ath5k_hw_set_tx_retry_limits(struct ath5k_hw *ah,
      unsigned int queue)
{

 if (ah->ah_version == AR5K_AR5210) {
  struct ath5k_txq_info *tq = &ah->ah_txq[queue];

  if (queue > 0)
   return;

  ath5k_hw_reg_write(ah,
   (tq->tqi_cw_min << AR5K_NODCU_RETRY_LMT_CW_MIN_S)
   | AR5K_REG_SM(ah->ah_retry_long,
          AR5K_NODCU_RETRY_LMT_SLG_RETRY)
   | AR5K_REG_SM(ah->ah_retry_short,
          AR5K_NODCU_RETRY_LMT_SSH_RETRY)
   | AR5K_REG_SM(ah->ah_retry_long,
          AR5K_NODCU_RETRY_LMT_LG_RETRY)
   | AR5K_REG_SM(ah->ah_retry_short,
          AR5K_NODCU_RETRY_LMT_SH_RETRY),
   AR5K_NODCU_RETRY_LMT);

 } else {
  ath5k_hw_reg_write(ah,
   AR5K_REG_SM(ah->ah_retry_long,
        AR5K_DCU_RETRY_LMT_RTS)
   | AR5K_REG_SM(ah->ah_retry_long,
          AR5K_DCU_RETRY_LMT_STA_RTS)
   | AR5K_REG_SM(max(ah->ah_retry_long, ah->ah_retry_short),
          AR5K_DCU_RETRY_LMT_STA_DATA),
   AR5K_QUEUE_DFS_RETRY_LIMIT(queue));
 }
}
