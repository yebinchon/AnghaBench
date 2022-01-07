
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_RTT_CTRL ;
 int AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int RTT_RESTORE_TIMEOUT ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;

bool ar9003_hw_rtt_force_restore(struct ath_hw *ah)
{
 if (!ath9k_hw_wait(ah, AR_PHY_RTT_CTRL,
      AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE,
      0, RTT_RESTORE_TIMEOUT))
  return 0;

 REG_RMW_FIELD(ah, AR_PHY_RTT_CTRL,
        AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE, 1);

 if (!ath9k_hw_wait(ah, AR_PHY_RTT_CTRL,
      AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE,
      0, RTT_RESTORE_TIMEOUT))
  return 0;

 return 1;
}
