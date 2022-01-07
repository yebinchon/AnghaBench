
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
struct TYPE_6__ {int txFrameToXpaOn; } ;


 int AR_PHY_XPA_TIMING_CTL ;
 int AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON ;
 int AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON ;
 int AR_SREV_9300 (struct ath_hw*) ;
 int AR_SREV_9340 (struct ath_hw*) ;
 int AR_SREV_9580 (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 TYPE_3__* ar9003_modal_header (struct ath_hw*,int) ;

__attribute__((used)) static void ar9003_hw_xpa_timing_control_apply(struct ath_hw *ah, bool is2ghz)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 u8 xpa_ctl;

 if (!(eep->baseEepHeader.featureEnable & 0x80))
  return;

 if (!AR_SREV_9300(ah) && !AR_SREV_9340(ah) && !AR_SREV_9580(ah))
  return;

 xpa_ctl = ar9003_modal_header(ah, is2ghz)->txFrameToXpaOn;
 if (is2ghz)
  REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
         AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON, xpa_ctl);
 else
  REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
         AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON, xpa_ctl);
}
