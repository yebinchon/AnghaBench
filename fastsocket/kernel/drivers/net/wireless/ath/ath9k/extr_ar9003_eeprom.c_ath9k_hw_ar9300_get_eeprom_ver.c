
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eepromVersion; } ;
struct TYPE_4__ {TYPE_1__ ar9300_eep; } ;
struct ath_hw {TYPE_2__ eeprom; } ;



__attribute__((used)) static int ath9k_hw_ar9300_get_eeprom_ver(struct ath_hw *ah)
{
 return ah->eeprom.ar9300_eep.eepromVersion;
}
