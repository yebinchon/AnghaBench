
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int toggleq; } ;
struct TYPE_4__ {int ee_header; } ;
struct TYPE_5__ {TYPE_1__ cap_eeprom; } ;
struct ath5k_hw {TYPE_3__ rf_kill; TYPE_2__ ah_capabilities; } ;


 scalar_t__ AR5K_EEPROM_HDR_RFKILL (int ) ;
 int ath5k_rfkill_enable (struct ath5k_hw*) ;
 int ath5k_rfkill_set_intr (struct ath5k_hw*,int) ;
 int tasklet_kill (int *) ;

void
ath5k_rfkill_hw_stop(struct ath5k_hw *ah)
{

 if (AR5K_EEPROM_HDR_RFKILL(ah->ah_capabilities.cap_eeprom.ee_header))
  ath5k_rfkill_set_intr(ah, 0);

 tasklet_kill(&ah->rf_kill.toggleq);


 ath5k_rfkill_enable(ah);
}
