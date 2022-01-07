
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ ah; } ;


 int AH_WAIT_TIMEOUT ;
 scalar_t__ AR5416_EEPROM_OFFSET ;
 int AR5416_EEPROM_S ;
 scalar_t__ AR_EEPROM_STATUS_DATA ;
 int AR_EEPROM_STATUS_DATA_BUSY ;
 int AR_EEPROM_STATUS_DATA_PROT_ACCESS ;
 int AR_EEPROM_STATUS_DATA_VAL ;
 int MS (int ,int ) ;
 int REG_READ (struct ath_hw*,scalar_t__) ;
 int ath9k_hw_wait (struct ath_hw*,scalar_t__,int,int ,int ) ;

__attribute__((used)) static bool ath_usb_eeprom_read(struct ath_common *common, u32 off, u16 *data)
{
 struct ath_hw *ah = (struct ath_hw *) common->ah;

 (void)REG_READ(ah, AR5416_EEPROM_OFFSET + (off << AR5416_EEPROM_S));

 if (!ath9k_hw_wait(ah,
      AR_EEPROM_STATUS_DATA,
      AR_EEPROM_STATUS_DATA_BUSY |
      AR_EEPROM_STATUS_DATA_PROT_ACCESS, 0,
      AH_WAIT_TIMEOUT))
  return 0;

 *data = MS(REG_READ(ah, AR_EEPROM_STATUS_DATA),
     AR_EEPROM_STATUS_DATA_VAL);

 return 1;
}
