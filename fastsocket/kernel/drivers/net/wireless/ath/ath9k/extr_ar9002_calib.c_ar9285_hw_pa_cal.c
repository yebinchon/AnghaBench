
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct ath_hw {TYPE_2__ pacal_info; TYPE_1__* eep_ops; } ;
struct ath_common {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ;
 int AR9285_AN_RF2G1 ;
 int AR9285_AN_RF2G1_ENPACAL ;
 int AR9285_AN_RF2G1_PDPADRV1 ;
 int AR9285_AN_RF2G1_PDPADRV2 ;
 int AR9285_AN_RF2G1_PDPAOUT ;
 int AR9285_AN_RF2G2 ;
 int AR9285_AN_RF2G2_OFFCAL ;
 int AR9285_AN_RF2G3 ;
 int AR9285_AN_RF2G3_PDVCCOMP ;
 int AR9285_AN_RF2G6 ;
 int AR9285_AN_RF2G6_CCOMP ;
 int AR9285_AN_RF2G6_OFFS ;
 int AR9285_AN_RF2G7 ;
 int AR9285_AN_RF2G7_PADRVGN2TAB0 ;
 int AR9285_AN_RF2G7_PWDDB ;
 int AR9285_AN_RF2G8 ;
 int AR9285_AN_RF2G8_PADRVGN2TAB0 ;
 int AR9285_AN_RF2G9 ;
 int AR9285_AN_RXTXBB1 ;
 int AR9285_AN_RXTXBB1_PDDACIF ;
 int AR9285_AN_RXTXBB1_PDRXTXBB1 ;
 int AR9285_AN_RXTXBB1_PDV2I ;
 int AR9285_AN_RXTXBB1_SPARE9 ;
 int AR9285_AN_TOP2 ;
 int AR9285_AN_TOP3 ;
 int AR9285_AN_TOP3_PWDDAC ;
 int ARRAY_SIZE (int**) ;
 int CALIBRATE ;
 int EEP_TXGAIN_TYPE ;
 int MAX_PACAL_SKIPCOUNT ;
 int MS (int,int ) ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_RMW_FIELD (struct ath_hw*,int,int ,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 scalar_t__ stub1 (struct ath_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void ar9285_hw_pa_cal(struct ath_hw *ah, bool is_reset)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u32 regVal;
 int i, offset, offs_6_1, offs_0;
 u32 ccomp_org, reg_field;
 u32 regList[][2] = {
  { 0x786c, 0 },
  { 0x7854, 0 },
  { 0x7820, 0 },
  { 0x7824, 0 },
  { 0x7868, 0 },
  { 0x783c, 0 },
  { 0x7838, 0 },
 };

 ath_dbg(common, CALIBRATE, "Running PA Calibration\n");


 if (ah->eep_ops->get_eeprom(ah, EEP_TXGAIN_TYPE) ==
     AR5416_EEP_TXGAIN_HIGH_POWER)
  return;

 for (i = 0; i < ARRAY_SIZE(regList); i++)
  regList[i][1] = REG_READ(ah, regList[i][0]);

 regVal = REG_READ(ah, 0x7834);
 regVal &= (~(0x1));
 REG_WRITE(ah, 0x7834, regVal);
 regVal = REG_READ(ah, 0x9808);
 regVal |= (0x1 << 27);
 REG_WRITE(ah, 0x9808, regVal);

 REG_RMW_FIELD(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC, 1);
 REG_RMW_FIELD(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1, 1);
 REG_RMW_FIELD(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I, 1);
 REG_RMW_FIELD(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF, 1);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);
 ccomp_org = MS(REG_READ(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_CCOMP);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, 0xf);

 REG_WRITE(ah, AR9285_AN_TOP2, 0xca0358a0);
 udelay(30);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, 0);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 0);

 for (i = 6; i > 0; i--) {
  regVal = REG_READ(ah, 0x7834);
  regVal |= (1 << (19 + i));
  REG_WRITE(ah, 0x7834, regVal);
  udelay(1);
  regVal = REG_READ(ah, 0x7834);
  regVal &= (~(0x1 << (19 + i)));
  reg_field = MS(REG_READ(ah, 0x7840), AR9285_AN_RXTXBB1_SPARE9);
  regVal |= (reg_field << (19 + i));
  REG_WRITE(ah, 0x7834, regVal);
 }

 REG_RMW_FIELD(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 1);
 udelay(1);
 reg_field = MS(REG_READ(ah, AR9285_AN_RF2G9), AR9285_AN_RXTXBB1_SPARE9);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, reg_field);
 offs_6_1 = MS(REG_READ(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_OFFS);
 offs_0 = MS(REG_READ(ah, AR9285_AN_RF2G3), AR9285_AN_RF2G3_PDVCCOMP);

 offset = (offs_6_1<<1) | offs_0;
 offset = offset - 0;
 offs_6_1 = offset>>1;
 offs_0 = offset & 1;

 if ((!is_reset) && (ah->pacal_info.prev_offset == offset)) {
  if (ah->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
   ah->pacal_info.max_skipcount =
    2 * ah->pacal_info.max_skipcount;
  ah->pacal_info.skipcount = ah->pacal_info.max_skipcount;
 } else {
  ah->pacal_info.max_skipcount = 1;
  ah->pacal_info.skipcount = 0;
  ah->pacal_info.prev_offset = offset;
 }

 REG_RMW_FIELD(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, offs_6_1);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, offs_0);

 regVal = REG_READ(ah, 0x7834);
 regVal |= 0x1;
 REG_WRITE(ah, 0x7834, regVal);
 regVal = REG_READ(ah, 0x9808);
 regVal &= (~(0x1 << 27));
 REG_WRITE(ah, 0x9808, regVal);

 for (i = 0; i < ARRAY_SIZE(regList); i++)
  REG_WRITE(ah, regList[i][0], regList[i][1]);

 REG_RMW_FIELD(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, ccomp_org);
}
