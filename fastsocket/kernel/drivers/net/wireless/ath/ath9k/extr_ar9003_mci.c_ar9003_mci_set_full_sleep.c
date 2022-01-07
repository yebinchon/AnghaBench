
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {scalar_t__ bt_state; int ready; int halted_bt_gpm; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_BT_SLEEP ;
 int MCI_STATE_ENABLE ;
 int ar9003_mci_send_coex_halt_bt_gpm (struct ath_hw*,int,int) ;
 scalar_t__ ar9003_mci_state (struct ath_hw*,int ) ;

void ar9003_mci_set_full_sleep(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 if (ar9003_mci_state(ah, MCI_STATE_ENABLE) &&
     (mci->bt_state != MCI_BT_SLEEP) &&
     !mci->halted_bt_gpm) {
  ar9003_mci_send_coex_halt_bt_gpm(ah, 1, 1);
 }

 mci->ready = 0;
}
