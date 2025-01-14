
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ enable_ani; } ;
struct ath_hw {TYPE_2__ config; TYPE_1__* eep_ops; } ;
struct ath_common {TYPE_3__* bus_ops; } ;
struct TYPE_6__ {scalar_t__ ath_bus_type; } ;
struct TYPE_4__ {int (* get_eeprom_rev ) (struct ath_hw*) ;int (* get_eeprom_ver ) (struct ath_hw*) ;} ;


 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ ATH_USB ;
 int CONFIG ;
 int ENODEV ;
 int ar9002_hw_rf_claim (struct ath_hw*) ;
 int ath9k_hw_ani_init (struct ath_hw*) ;
 int ath9k_hw_chip_test (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_eeprom_init (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int stub1 (struct ath_hw*) ;
 int stub2 (struct ath_hw*) ;

__attribute__((used)) static int ath9k_hw_post_init(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int ecode;

 if (common->bus_ops->ath_bus_type != ATH_USB) {
  if (!ath9k_hw_chip_test(ah))
   return -ENODEV;
 }

 if (!AR_SREV_9300_20_OR_LATER(ah)) {
  ecode = ar9002_hw_rf_claim(ah);
  if (ecode != 0)
   return ecode;
 }

 ecode = ath9k_hw_eeprom_init(ah);
 if (ecode != 0)
  return ecode;

 ath_dbg(ath9k_hw_common(ah), CONFIG, "Eeprom VER: %d, REV: %d\n",
  ah->eep_ops->get_eeprom_ver(ah),
  ah->eep_ops->get_eeprom_rev(ah));

 if (ah->config.enable_ani)
  ath9k_hw_ani_init(ah);

 return 0;
}
