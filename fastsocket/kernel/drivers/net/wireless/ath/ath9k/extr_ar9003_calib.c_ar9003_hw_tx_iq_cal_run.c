
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_TXGAIN_FORCE ;
 int AR_PHY_TX_FORCED_GAIN ;
 int AR_PHY_TX_IQCAL_START ;
 int AR_PHY_TX_IQCAL_START_DO_CAL ;
 int CALIBRATE ;
 scalar_t__ REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static bool ar9003_hw_tx_iq_cal_run(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u8 tx_gain_forced;

 tx_gain_forced = REG_READ_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
     AR_PHY_TXGAIN_FORCE);
 if (tx_gain_forced)
  REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
         AR_PHY_TXGAIN_FORCE, 0);

 REG_RMW_FIELD(ah, AR_PHY_TX_IQCAL_START,
        AR_PHY_TX_IQCAL_START_DO_CAL, 1);

 if (!ath9k_hw_wait(ah, AR_PHY_TX_IQCAL_START,
   AR_PHY_TX_IQCAL_START_DO_CAL, 0,
   AH_WAIT_TIMEOUT)) {
  ath_dbg(common, CALIBRATE, "Tx IQ Cal is not completed\n");
  return 0;
 }
 return 1;
}
