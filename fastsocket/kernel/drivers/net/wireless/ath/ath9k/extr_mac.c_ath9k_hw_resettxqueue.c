
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int additional_swba_backoff; scalar_t__ dma_beacon_response_time; scalar_t__ sw_beacon_response_time; } ;
struct ath_hw {int txok_interrupt_mask; int txerr_interrupt_mask; int txdesc_interrupt_mask; int txeol_interrupt_mask; int txurn_interrupt_mask; TYPE_1__ config; int opmode; struct ath9k_tx_queue_info* txq; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_type; size_t tqi_cwmin; size_t tqi_cwmax; size_t tqi_aifs; size_t tqi_shretry; int tqi_cbrPeriod; size_t tqi_cbrOverflowLimit; size_t tqi_readyTime; size_t tqi_burstTime; int tqi_qflags; int tqi_intFlags; } ;
struct ath9k_channel {int dummy; } ;


 int AR_DCHNTIME (size_t) ;
 int AR_DLCL_IFS (size_t) ;
 int AR_DMISC (size_t) ;
 int AR_DRETRY_LIMIT (size_t) ;
 int AR_D_CHNTIME_DUR ;
 size_t AR_D_CHNTIME_EN ;
 int AR_D_LCL_IFS_AIFS ;
 int AR_D_LCL_IFS_CWMAX ;
 int AR_D_LCL_IFS_CWMIN ;
 int AR_D_MISC_ARB_LOCKOUT_CNTRL ;
 size_t AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL ;
 size_t AR_D_MISC_ARB_LOCKOUT_CNTRL_S ;
 size_t AR_D_MISC_BEACON_USE ;
 int AR_D_MISC_CW_BKOFF_EN ;
 size_t AR_D_MISC_FRAG_BKOFF_EN ;
 int AR_D_MISC_FRAG_WAIT_EN ;
 size_t AR_D_MISC_POST_FR_BKOFF_DIS ;
 int AR_D_RETRY_LIMIT_FR_SH ;
 int AR_D_RETRY_LIMIT_STA_LG ;
 int AR_D_RETRY_LIMIT_STA_SH ;
 int AR_QCBRCFG (size_t) ;
 int AR_QMISC (size_t) ;
 int AR_QRDYTIMECFG (size_t) ;
 int AR_Q_CBRCFG_INTERVAL ;
 int AR_Q_CBRCFG_OVF_THRESH ;
 int AR_Q_DESC_CRCCHK ;
 size_t AR_Q_DESC_CRCCHK_EN ;
 size_t AR_Q_MISC_BEACON_USE ;
 size_t AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN ;
 size_t AR_Q_MISC_CBR_INCR_DIS0 ;
 size_t AR_Q_MISC_CBR_INCR_DIS1 ;
 size_t AR_Q_MISC_DCU_EARLY_TERM_REQ ;
 size_t AR_Q_MISC_FSP_CBR ;
 size_t AR_Q_MISC_FSP_DBA_GATED ;
 size_t AR_Q_MISC_RDYTIME_EXP_POLICY ;
 int AR_Q_RDYTIMECFG_DURATION ;
 size_t AR_Q_RDYTIMECFG_EN ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 int AR_SREV_9340_13_OR_LATER (struct ath_hw*) ;
 size_t ATH9K_TXQ_USEDEFAULT ;
 int ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS ;


 int ATH9K_TX_QUEUE_INACTIVE ;


 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 size_t INIT_CWMIN ;
 size_t INIT_CWMIN_11B ;
 size_t INIT_SLG_RETRY ;
 size_t INIT_SSH_RETRY ;
 scalar_t__ IS_CHAN_B (struct ath9k_channel*) ;
 int NL80211_IFTYPE_ADHOC ;
 int QUEUE ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_SET_BIT (struct ath_hw*,int ,size_t) ;
 int REG_WRITE (struct ath_hw*,int ,size_t) ;
 size_t SM (size_t,int ) ;
 int TXQ_FLAG_BACKOFF_DISABLE ;
 int TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE ;
 int TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE ;
 int TXQ_FLAG_TXDESCINT_ENABLE ;
 int TXQ_FLAG_TXEOLINT_ENABLE ;
 int TXQ_FLAG_TXINT_ENABLE ;
 int TXQ_FLAG_TXURNINT_ENABLE ;
 int ath9k_hw_clear_queue_interrupts (struct ath_hw*,size_t) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_txq_interrupts (struct ath_hw*,struct ath9k_tx_queue_info*) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t) ;

bool ath9k_hw_resettxqueue(struct ath_hw *ah, u32 q)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_channel *chan = ah->curchan;
 struct ath9k_tx_queue_info *qi;
 u32 cwMin, chanCwMin, value;

 qi = &ah->txq[q];
 if (qi->tqi_type == ATH9K_TX_QUEUE_INACTIVE) {
  ath_dbg(common, QUEUE, "Reset TXQ, inactive queue: %u\n", q);
  return 1;
 }

 ath_dbg(common, QUEUE, "Reset TX queue: %u\n", q);

 if (qi->tqi_cwmin == ATH9K_TXQ_USEDEFAULT) {
  if (chan && IS_CHAN_B(chan))
   chanCwMin = INIT_CWMIN_11B;
  else
   chanCwMin = INIT_CWMIN;

  for (cwMin = 1; cwMin < chanCwMin; cwMin = (cwMin << 1) | 1);
 } else
  cwMin = qi->tqi_cwmin;

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_DLCL_IFS(q),
    SM(cwMin, AR_D_LCL_IFS_CWMIN) |
    SM(qi->tqi_cwmax, AR_D_LCL_IFS_CWMAX) |
    SM(qi->tqi_aifs, AR_D_LCL_IFS_AIFS));

 REG_WRITE(ah, AR_DRETRY_LIMIT(q),
    SM(INIT_SSH_RETRY, AR_D_RETRY_LIMIT_STA_SH) |
    SM(INIT_SLG_RETRY, AR_D_RETRY_LIMIT_STA_LG) |
    SM(qi->tqi_shretry, AR_D_RETRY_LIMIT_FR_SH));

 REG_WRITE(ah, AR_QMISC(q), AR_Q_MISC_DCU_EARLY_TERM_REQ);

 if (AR_SREV_9340(ah) && !AR_SREV_9340_13_OR_LATER(ah))
  REG_WRITE(ah, AR_DMISC(q),
     AR_D_MISC_CW_BKOFF_EN | AR_D_MISC_FRAG_WAIT_EN | 0x1);
 else
  REG_WRITE(ah, AR_DMISC(q),
     AR_D_MISC_CW_BKOFF_EN | AR_D_MISC_FRAG_WAIT_EN | 0x2);

 if (qi->tqi_cbrPeriod) {
  REG_WRITE(ah, AR_QCBRCFG(q),
     SM(qi->tqi_cbrPeriod, AR_Q_CBRCFG_INTERVAL) |
     SM(qi->tqi_cbrOverflowLimit, AR_Q_CBRCFG_OVF_THRESH));
  REG_SET_BIT(ah, AR_QMISC(q), AR_Q_MISC_FSP_CBR |
       (qi->tqi_cbrOverflowLimit ?
        AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN : 0));
 }
 if (qi->tqi_readyTime && (qi->tqi_type != 130)) {
  REG_WRITE(ah, AR_QRDYTIMECFG(q),
     SM(qi->tqi_readyTime, AR_Q_RDYTIMECFG_DURATION) |
     AR_Q_RDYTIMECFG_EN);
 }

 REG_WRITE(ah, AR_DCHNTIME(q),
    SM(qi->tqi_burstTime, AR_D_CHNTIME_DUR) |
    (qi->tqi_burstTime ? AR_D_CHNTIME_EN : 0));

 if (qi->tqi_burstTime
     && (qi->tqi_qflags & TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE))
  REG_SET_BIT(ah, AR_QMISC(q), AR_Q_MISC_RDYTIME_EXP_POLICY);

 if (qi->tqi_qflags & TXQ_FLAG_BACKOFF_DISABLE)
  REG_SET_BIT(ah, AR_DMISC(q), AR_D_MISC_POST_FR_BKOFF_DIS);

 REGWRITE_BUFFER_FLUSH(ah);

 if (qi->tqi_qflags & TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE)
  REG_SET_BIT(ah, AR_DMISC(q), AR_D_MISC_FRAG_BKOFF_EN);

 switch (qi->tqi_type) {
 case 131:
  ENABLE_REGWRITE_BUFFER(ah);

  REG_SET_BIT(ah, AR_QMISC(q),
       AR_Q_MISC_FSP_DBA_GATED
       | AR_Q_MISC_BEACON_USE
       | AR_Q_MISC_CBR_INCR_DIS1);

  REG_SET_BIT(ah, AR_DMISC(q),
       (AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL <<
        AR_D_MISC_ARB_LOCKOUT_CNTRL_S)
       | AR_D_MISC_BEACON_USE
       | AR_D_MISC_POST_FR_BKOFF_DIS);

  REGWRITE_BUFFER_FLUSH(ah);






  if (AR_SREV_9300_20_OR_LATER(ah) &&
      ah->opmode != NL80211_IFTYPE_ADHOC) {
   REG_WRITE(ah, AR_DLCL_IFS(q), SM(0, AR_D_LCL_IFS_CWMIN)
      | SM(0, AR_D_LCL_IFS_CWMAX)
      | SM(qi->tqi_aifs, AR_D_LCL_IFS_AIFS));
  }
  break;
 case 130:
  ENABLE_REGWRITE_BUFFER(ah);

  REG_SET_BIT(ah, AR_QMISC(q),
       AR_Q_MISC_FSP_DBA_GATED
       | AR_Q_MISC_CBR_INCR_DIS1
       | AR_Q_MISC_CBR_INCR_DIS0);
  value = (qi->tqi_readyTime -
    (ah->config.sw_beacon_response_time -
     ah->config.dma_beacon_response_time) -
    ah->config.additional_swba_backoff) * 1024;
  REG_WRITE(ah, AR_QRDYTIMECFG(q),
     value | AR_Q_RDYTIMECFG_EN);
  REG_SET_BIT(ah, AR_DMISC(q),
       (AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL <<
        AR_D_MISC_ARB_LOCKOUT_CNTRL_S));

  REGWRITE_BUFFER_FLUSH(ah);

  break;
 case 129:
  REG_SET_BIT(ah, AR_QMISC(q), AR_Q_MISC_CBR_INCR_DIS1);
  break;
 case 128:
  REG_SET_BIT(ah, AR_DMISC(q), AR_D_MISC_POST_FR_BKOFF_DIS);
  break;
 default:
  break;
 }

 if (qi->tqi_intFlags & ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS) {
  REG_SET_BIT(ah, AR_DMISC(q),
       SM(AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL,
          AR_D_MISC_ARB_LOCKOUT_CNTRL) |
       AR_D_MISC_POST_FR_BKOFF_DIS);
 }

 if (AR_SREV_9300_20_OR_LATER(ah))
  REG_WRITE(ah, AR_Q_DESC_CRCCHK, AR_Q_DESC_CRCCHK_EN);

 ath9k_hw_clear_queue_interrupts(ah, q);
 if (qi->tqi_qflags & TXQ_FLAG_TXINT_ENABLE) {
  ah->txok_interrupt_mask |= 1 << q;
  ah->txerr_interrupt_mask |= 1 << q;
 }
 if (qi->tqi_qflags & TXQ_FLAG_TXDESCINT_ENABLE)
  ah->txdesc_interrupt_mask |= 1 << q;
 if (qi->tqi_qflags & TXQ_FLAG_TXEOLINT_ENABLE)
  ah->txeol_interrupt_mask |= 1 << q;
 if (qi->tqi_qflags & TXQ_FLAG_TXURNINT_ENABLE)
  ah->txurn_interrupt_mask |= 1 << q;
 ath9k_hw_set_txq_interrupts(ah, qi);

 return 1;
}
