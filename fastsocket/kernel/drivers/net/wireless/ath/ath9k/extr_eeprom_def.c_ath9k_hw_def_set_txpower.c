
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct modal_eep_header {scalar_t__ ht40PowerIncForPdadc; scalar_t__ pwrDecreaseFor3Chain; scalar_t__ pwrDecreaseFor2Chain; } ;
struct ath_regulatory {scalar_t__ max_power_level; } ;
struct TYPE_5__ {int version; } ;
struct ar5416_eeprom_def {TYPE_2__ baseEepHeader; struct modal_eep_header* modalHeader; } ;
struct TYPE_4__ {struct ar5416_eeprom_def def; } ;
struct ath_hw {TYPE_3__* eep_ops; TYPE_1__ eeprom; } ;
struct ath9k_channel {int dummy; } ;
typedef int ratesArray ;
typedef int int8_t ;
typedef scalar_t__ int16_t ;
struct TYPE_6__ {int (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 int AR5416_EEP_MINOR_VER_2 ;
 int AR5416_EEP_VER_MINOR_MASK ;
 int ARRAY_SIZE (scalar_t__*) ;
 int AR_PHY_POWER_TX_RATE1 ;
 int AR_PHY_POWER_TX_RATE2 ;
 int AR_PHY_POWER_TX_RATE3 ;
 int AR_PHY_POWER_TX_RATE4 ;
 int AR_PHY_POWER_TX_RATE5 ;
 int AR_PHY_POWER_TX_RATE6 ;
 int AR_PHY_POWER_TX_RATE7 ;
 int AR_PHY_POWER_TX_RATE8 ;
 int AR_PHY_POWER_TX_RATE9 ;
 int AR_PHY_POWER_TX_SUB ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int ATH9K_POW_SM (scalar_t__,int) ;
 int Ar5416RateSize ;
 int EEP_PWR_TABLE_OFFSET ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 scalar_t__ MAX_RATE_POWER ;
 scalar_t__ OLC_FOR_AR9280_20_LATER ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ RT_AR_DELTA (size_t) ;
 struct ath_regulatory* ath9k_hw_regulatory (struct ath_hw*) ;
 int ath9k_hw_set_def_power_cal_table (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_set_def_power_per_rate_table (struct ath_hw*,struct ath9k_channel*,scalar_t__*,int ,scalar_t__,scalar_t__) ;
 int ath9k_hw_update_regulatory_maxpower (struct ath_hw*) ;
 int memset (scalar_t__*,int ,int) ;
 size_t rate11l ;
 size_t rate11s ;
 size_t rate12mb ;
 size_t rate18mb ;
 size_t rate1l ;
 size_t rate24mb ;
 size_t rate2l ;
 size_t rate2s ;
 size_t rate36mb ;
 size_t rate48mb ;
 size_t rate54mb ;
 size_t rate5_5l ;
 size_t rate5_5s ;
 size_t rate6mb ;
 size_t rate9mb ;
 size_t rateDupCck ;
 size_t rateDupOfdm ;
 size_t rateExtCck ;
 size_t rateExtOfdm ;
 size_t rateHt20_0 ;
 size_t rateHt20_1 ;
 size_t rateHt20_2 ;
 size_t rateHt20_3 ;
 size_t rateHt20_4 ;
 size_t rateHt20_5 ;
 size_t rateHt20_6 ;
 size_t rateHt20_7 ;
 size_t rateHt40_0 ;
 size_t rateHt40_1 ;
 size_t rateHt40_2 ;
 size_t rateHt40_3 ;
 size_t rateHt40_4 ;
 size_t rateHt40_5 ;
 size_t rateHt40_6 ;
 size_t rateHt40_7 ;
 size_t rateXr ;
 int stub1 (struct ath_hw*,int ) ;

__attribute__((used)) static void ath9k_hw_def_set_txpower(struct ath_hw *ah,
        struct ath9k_channel *chan,
        u16 cfgCtl,
        u8 twiceAntennaReduction,
        u8 powerLimit, bool test)
{

 struct ath_regulatory *regulatory = ath9k_hw_regulatory(ah);
 struct ar5416_eeprom_def *pEepData = &ah->eeprom.def;
 struct modal_eep_header *pModal =
  &(pEepData->modalHeader[IS_CHAN_2GHZ(chan)]);
 int16_t ratesArray[Ar5416RateSize];
 u8 ht40PowerIncForPdadc = 2;
 int i, cck_ofdm_delta = 0;

 memset(ratesArray, 0, sizeof(ratesArray));

 if ((pEepData->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
     AR5416_EEP_MINOR_VER_2) {
  ht40PowerIncForPdadc = pModal->ht40PowerIncForPdadc;
 }

 ath9k_hw_set_def_power_per_rate_table(ah, chan,
            &ratesArray[0], cfgCtl,
            twiceAntennaReduction,
            powerLimit);

 ath9k_hw_set_def_power_cal_table(ah, chan);

 regulatory->max_power_level = 0;
 for (i = 0; i < ARRAY_SIZE(ratesArray); i++) {
  if (ratesArray[i] > MAX_RATE_POWER)
   ratesArray[i] = MAX_RATE_POWER;
  if (ratesArray[i] > regulatory->max_power_level)
   regulatory->max_power_level = ratesArray[i];
 }

 ath9k_hw_update_regulatory_maxpower(ah);

 if (test)
  return;

 if (AR_SREV_9280_20_OR_LATER(ah)) {
  for (i = 0; i < Ar5416RateSize; i++) {
   int8_t pwr_table_offset;

   pwr_table_offset = ah->eep_ops->get_eeprom(ah,
       EEP_PWR_TABLE_OFFSET);
   ratesArray[i] -= pwr_table_offset * 2;
  }
 }

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_PHY_POWER_TX_RATE1,
    ATH9K_POW_SM(ratesArray[rate18mb], 24)
    | ATH9K_POW_SM(ratesArray[rate12mb], 16)
    | ATH9K_POW_SM(ratesArray[rate9mb], 8)
    | ATH9K_POW_SM(ratesArray[rate6mb], 0));
 REG_WRITE(ah, AR_PHY_POWER_TX_RATE2,
    ATH9K_POW_SM(ratesArray[rate54mb], 24)
    | ATH9K_POW_SM(ratesArray[rate48mb], 16)
    | ATH9K_POW_SM(ratesArray[rate36mb], 8)
    | ATH9K_POW_SM(ratesArray[rate24mb], 0));

 if (IS_CHAN_2GHZ(chan)) {
  if (OLC_FOR_AR9280_20_LATER) {
   cck_ofdm_delta = 2;
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE3,
    ATH9K_POW_SM((ratesArray[rate2s] - cck_ofdm_delta), 24)
    | ATH9K_POW_SM((ratesArray[rate2l] - cck_ofdm_delta), 16)
    | ATH9K_POW_SM(ratesArray[rateXr], 8)
    | ATH9K_POW_SM((ratesArray[rate1l] - cck_ofdm_delta), 0));
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE4,
    ATH9K_POW_SM((ratesArray[rate11s] - cck_ofdm_delta), 24)
    | ATH9K_POW_SM((ratesArray[rate11l] - cck_ofdm_delta), 16)
    | ATH9K_POW_SM((ratesArray[rate5_5s] - cck_ofdm_delta), 8)
    | ATH9K_POW_SM((ratesArray[rate5_5l] - cck_ofdm_delta), 0));
  } else {
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE3,
    ATH9K_POW_SM(ratesArray[rate2s], 24)
    | ATH9K_POW_SM(ratesArray[rate2l], 16)
    | ATH9K_POW_SM(ratesArray[rateXr], 8)
    | ATH9K_POW_SM(ratesArray[rate1l], 0));
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE4,
    ATH9K_POW_SM(ratesArray[rate11s], 24)
    | ATH9K_POW_SM(ratesArray[rate11l], 16)
    | ATH9K_POW_SM(ratesArray[rate5_5s], 8)
    | ATH9K_POW_SM(ratesArray[rate5_5l], 0));
  }
 }

 REG_WRITE(ah, AR_PHY_POWER_TX_RATE5,
    ATH9K_POW_SM(ratesArray[rateHt20_3], 24)
    | ATH9K_POW_SM(ratesArray[rateHt20_2], 16)
    | ATH9K_POW_SM(ratesArray[rateHt20_1], 8)
    | ATH9K_POW_SM(ratesArray[rateHt20_0], 0));
 REG_WRITE(ah, AR_PHY_POWER_TX_RATE6,
    ATH9K_POW_SM(ratesArray[rateHt20_7], 24)
    | ATH9K_POW_SM(ratesArray[rateHt20_6], 16)
    | ATH9K_POW_SM(ratesArray[rateHt20_5], 8)
    | ATH9K_POW_SM(ratesArray[rateHt20_4], 0));

 if (IS_CHAN_HT40(chan)) {
  REG_WRITE(ah, AR_PHY_POWER_TX_RATE7,
     ATH9K_POW_SM(ratesArray[rateHt40_3] +
           ht40PowerIncForPdadc, 24)
     | ATH9K_POW_SM(ratesArray[rateHt40_2] +
      ht40PowerIncForPdadc, 16)
     | ATH9K_POW_SM(ratesArray[rateHt40_1] +
      ht40PowerIncForPdadc, 8)
     | ATH9K_POW_SM(ratesArray[rateHt40_0] +
      ht40PowerIncForPdadc, 0));
  REG_WRITE(ah, AR_PHY_POWER_TX_RATE8,
     ATH9K_POW_SM(ratesArray[rateHt40_7] +
           ht40PowerIncForPdadc, 24)
     | ATH9K_POW_SM(ratesArray[rateHt40_6] +
      ht40PowerIncForPdadc, 16)
     | ATH9K_POW_SM(ratesArray[rateHt40_5] +
      ht40PowerIncForPdadc, 8)
     | ATH9K_POW_SM(ratesArray[rateHt40_4] +
      ht40PowerIncForPdadc, 0));
  if (OLC_FOR_AR9280_20_LATER) {
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE9,
    ATH9K_POW_SM(ratesArray[rateExtOfdm], 24)
    | ATH9K_POW_SM((ratesArray[rateExtCck] - cck_ofdm_delta), 16)
    | ATH9K_POW_SM(ratesArray[rateDupOfdm], 8)
    | ATH9K_POW_SM((ratesArray[rateDupCck] - cck_ofdm_delta), 0));
  } else {
   REG_WRITE(ah, AR_PHY_POWER_TX_RATE9,
    ATH9K_POW_SM(ratesArray[rateExtOfdm], 24)
    | ATH9K_POW_SM(ratesArray[rateExtCck], 16)
    | ATH9K_POW_SM(ratesArray[rateDupOfdm], 8)
    | ATH9K_POW_SM(ratesArray[rateDupCck], 0));
  }
 }

 REG_WRITE(ah, AR_PHY_POWER_TX_SUB,
    ATH9K_POW_SM(pModal->pwrDecreaseFor3Chain, 6)
    | ATH9K_POW_SM(pModal->pwrDecreaseFor2Chain, 0));

 REGWRITE_BUFFER_FLUSH(ah);
}
