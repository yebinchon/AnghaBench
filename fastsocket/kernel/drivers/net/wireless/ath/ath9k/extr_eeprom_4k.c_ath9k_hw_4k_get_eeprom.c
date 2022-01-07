
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct modal_eep_4k_header {int* noiseFloorThreshCh; int ob_0; int db1_1; int version; int antdiv_ctl1; int* antennaGainCh; } ;
struct base_eep_header_4k {int version; int* regDmn; int deviceCap; int opCapFlags; int rfSilent; int txMask; int rxMask; int txGainType; int macAddr; } ;
struct ar5416_eeprom_4k {struct base_eep_header_4k baseEepHeader; struct modal_eep_4k_header modalHeader; } ;
struct TYPE_2__ {struct ar5416_eeprom_4k map4k; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef enum eeprom_param { ____Placeholder_eeprom_param } eeprom_param ;


 int AR5416_EEP_VER_MINOR_MASK ;
 int AR5416_PWR_TABLE_OFFSET_DB ;
 int get_unaligned_be16 (int ) ;

__attribute__((used)) static u32 ath9k_hw_4k_get_eeprom(struct ath_hw *ah,
      enum eeprom_param param)
{
 struct ar5416_eeprom_4k *eep = &ah->eeprom.map4k;
 struct modal_eep_4k_header *pModal = &eep->modalHeader;
 struct base_eep_header_4k *pBase = &eep->baseEepHeader;
 u16 ver_minor;

 ver_minor = pBase->version & AR5416_EEP_VER_MINOR_MASK;

 switch (param) {
 case 137:
  return pModal->noiseFloorThreshCh[0];
 case 142:
  return get_unaligned_be16(pBase->macAddr);
 case 141:
  return get_unaligned_be16(pBase->macAddr + 2);
 case 140:
  return get_unaligned_be16(pBase->macAddr + 4);
 case 132:
  return pBase->regDmn[0];
 case 135:
  return pBase->deviceCap;
 case 134:
  return pBase->opCapFlags;
 case 131:
  return pBase->rfSilent;
 case 136:
  return pModal->ob_0;
 case 144:
  return pModal->db1_1;
 case 139:
  return ver_minor;
 case 128:
  return pBase->txMask;
 case 130:
  return pBase->rxMask;
 case 143:
  return 0;
 case 133:
  return AR5416_PWR_TABLE_OFFSET_DB;
 case 138:
  return pModal->version;
 case 145:
  return pModal->antdiv_ctl1;
 case 129:
  return pBase->txGainType;
 case 146:
  return pModal->antennaGainCh[0];
 default:
  return 0;
 }
}
