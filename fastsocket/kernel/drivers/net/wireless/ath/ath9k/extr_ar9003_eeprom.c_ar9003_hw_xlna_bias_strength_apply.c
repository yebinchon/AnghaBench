
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int featureEnable; } ;
struct ar9300_eeprom {TYPE_2__ baseEepHeader; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct TYPE_6__ {int xlna_bias_strength; } ;


 int AR_PHY_65NM_CH0_RXTX4 ;
 int AR_PHY_65NM_CH1_RXTX4 ;
 int AR_PHY_65NM_CH2_RXTX4 ;
 int AR_PHY_65NM_RXTX4_XLNA_BIAS ;
 int AR_SREV_9300 (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 TYPE_3__* ar9003_modal_header (struct ath_hw*,int) ;

__attribute__((used)) static void ar9003_hw_xlna_bias_strength_apply(struct ath_hw *ah, bool is2ghz)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 u8 bias;

 if (!(eep->baseEepHeader.featureEnable & 0x40))
  return;

 if (!AR_SREV_9300(ah))
  return;

 bias = ar9003_modal_header(ah, is2ghz)->xlna_bias_strength;
 REG_RMW_FIELD(ah, AR_PHY_65NM_CH0_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
        bias & 0x3);
 bias >>= 2;
 REG_RMW_FIELD(ah, AR_PHY_65NM_CH1_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
        bias & 0x3);
 bias >>= 2;
 REG_RMW_FIELD(ah, AR_PHY_65NM_CH2_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
        bias & 0x3);
}
