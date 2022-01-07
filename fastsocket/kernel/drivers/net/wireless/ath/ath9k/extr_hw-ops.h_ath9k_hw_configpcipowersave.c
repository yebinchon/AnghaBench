
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int aspm_enabled; } ;
struct TYPE_2__ {int (* config_pci_powersave ) (struct ath_hw*,int) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int) ;

__attribute__((used)) static inline void ath9k_hw_configpcipowersave(struct ath_hw *ah,
            bool power_off)
{
 if (!ah->aspm_enabled)
  return;

 ath9k_hw_ops(ah)->config_pci_powersave(ah, power_off);
}
