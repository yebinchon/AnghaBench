
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ar9300_eeprom {int dummy; } ;


 scalar_t__ ar9300_eeprom_restore_internal (struct ath_hw*,int *,int) ;

__attribute__((used)) static bool ath9k_hw_ar9300_fill_eeprom(struct ath_hw *ah)
{
 u8 *mptr = (u8 *) &ah->eeprom.ar9300_eep;

 if (ar9300_eeprom_restore_internal(ah, mptr,
   sizeof(struct ar9300_eeprom)) < 0)
  return 0;

 return 1;
}
