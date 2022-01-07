
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int map9287; } ;
struct ath_hw {TYPE_1__ eeprom; } ;


 int AR9287_HTC_EEP_START_LOC ;
 int SIZE_EEPROM_AR9287 ;
 int ath9k_hw_usb_gen_fill_eeprom (struct ath_hw*,int *,int ,int ) ;

__attribute__((used)) static bool __ath9k_hw_usb_ar9287_fill_eeprom(struct ath_hw *ah)
{
 u16 *eep_data = (u16 *)&ah->eeprom.map9287;

 ath9k_hw_usb_gen_fill_eeprom(ah, eep_data,
         AR9287_HTC_EEP_START_LOC,
         SIZE_EEPROM_AR9287);
 return 1;
}
