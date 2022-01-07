
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int map4k; } ;
struct ath_hw {TYPE_1__ eeprom; } ;


 int SIZE_EEPROM_4K ;
 int ath9k_hw_nvram_read (struct ath_hw*,int,int *) ;

__attribute__((used)) static bool __ath9k_hw_4k_fill_eeprom(struct ath_hw *ah)
{
 u16 *eep_data = (u16 *)&ah->eeprom.map4k;
 int addr, eep_start_loc = 64;

 for (addr = 0; addr < SIZE_EEPROM_4K; addr++) {
  if (!ath9k_hw_nvram_read(ah, addr + eep_start_loc, eep_data))
   return 0;
  eep_data++;
 }

 return 1;
}
