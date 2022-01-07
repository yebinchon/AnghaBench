
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct modal_eep_header {int* noiseFloorThreshCh; int ob; int db; int* antennaGainCh; } ;
struct base_eep_header {int* regDmn; int deviceCap; int opCapFlags; int rfSilent; int txMask; int rxMask; int fastClk5g; int rxGainType; int txGainType; int rcChainMask; int dacHiPwrMode_5G; int frac_n_5g; int pwr_table_offset; int openLoopPwrCntl; int macAddr; } ;
struct ar5416_eeprom_def {struct base_eep_header baseEepHeader; struct modal_eep_header* modalHeader; } ;
struct TYPE_2__ {struct ar5416_eeprom_def def; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef enum eeprom_param { ____Placeholder_eeprom_param } eeprom_param ;


 int AR5416_EEP_MINOR_VER_19 ;
 int AR5416_EEP_MINOR_VER_20 ;
 int AR5416_EEP_MINOR_VER_21 ;
 int AR5416_EEP_MINOR_VER_22 ;
 int AR5416_PWR_TABLE_OFFSET_DB ;
 int AR5416_VER_MASK ;
 int get_unaligned_be16 (int ) ;
 int max_t (int ,int,int) ;
 int u8 ;

__attribute__((used)) static u32 ath9k_hw_def_get_eeprom(struct ath_hw *ah,
       enum eeprom_param param)
{
 struct ar5416_eeprom_def *eep = &ah->eeprom.def;
 struct modal_eep_header *pModal = eep->modalHeader;
 struct base_eep_header *pBase = &eep->baseEepHeader;
 int band = 0;

 switch (param) {
 case 141:
  return pModal[0].noiseFloorThreshCh[0];
 case 142:
  return pModal[1].noiseFloorThreshCh[0];
 case 146:
  return get_unaligned_be16(pBase->macAddr);
 case 145:
  return get_unaligned_be16(pBase->macAddr + 2);
 case 144:
  return get_unaligned_be16(pBase->macAddr + 4);
 case 133:
  return pBase->regDmn[0];
 case 137:
  return pBase->deviceCap;
 case 136:
  return pBase->opCapFlags;
 case 132:
  return pBase->rfSilent;
 case 139:
  return pModal[0].ob;
 case 149:
  return pModal[0].db;
 case 140:
  return pModal[1].ob;
 case 150:
  return pModal[1].db;
 case 143:
  return AR5416_VER_MASK;
 case 128:
  return pBase->txMask;
 case 130:
  return pBase->rxMask;
 case 147:
  return pBase->fastClk5g;
 case 131:
  return pBase->rxGainType;
 case 129:
  return pBase->txGainType;
 case 138:
  if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_19)
   return pBase->openLoopPwrCntl ? 1 : 0;
  else
   return 0;
 case 134:
  if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_19)
   return pBase->rcChainMask;
  else
   return 0;
 case 151:
  if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_20)
   return pBase->dacHiPwrMode_5G;
  else
   return 0;
 case 148:
  if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_22)
   return pBase->frac_n_5g;
  else
   return 0;
 case 135:
  if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_21)
   return pBase->pwr_table_offset;
  else
   return AR5416_PWR_TABLE_OFFSET_DB;
 case 153:
  band = 1;

 case 152:
  return max_t(u8, max_t(u8,
   pModal[band].antennaGainCh[0],
   pModal[band].antennaGainCh[1]),
   pModal[band].antennaGainCh[2]);
 default:
  return 0;
 }
}
