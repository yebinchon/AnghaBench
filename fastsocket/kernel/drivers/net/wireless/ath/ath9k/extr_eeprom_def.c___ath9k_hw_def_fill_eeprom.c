
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int def; } ;
struct ath_hw {TYPE_1__ eeprom; } ;


 int SIZE_EEPROM_DEF ;
 int ath9k_hw_nvram_read (struct ath_hw*,int,int *) ;

__attribute__((used)) static bool __ath9k_hw_def_fill_eeprom(struct ath_hw *ah)
{
 u16 *eep_data = (u16 *)&ah->eeprom.def;
 int addr, ar5416_eep_start_loc = 0x100;

 for (addr = 0; addr < SIZE_EEPROM_DEF; addr++) {
  if (!ath9k_hw_nvram_read(ah, addr + ar5416_eep_start_loc,
      eep_data))
   return 0;
  eep_data++;
 }
 return 1;
}
