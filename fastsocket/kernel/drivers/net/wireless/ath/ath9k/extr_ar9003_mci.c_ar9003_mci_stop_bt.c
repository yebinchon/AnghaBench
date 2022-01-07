
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int ready; int bt_state; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AR_BTCOEX_CTRL ;
 int MCI_BT_SLEEP ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ar9003_mci_disable_interrupt (struct ath_hw*) ;
 int ar9003_mci_mute_bt (struct ath_hw*) ;
 int udelay (int) ;

void ar9003_mci_stop_bt(struct ath_hw *ah, bool save_fullsleep)
{
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;

 ar9003_mci_disable_interrupt(ah);

 if (mci_hw->ready && !save_fullsleep) {
  ar9003_mci_mute_bt(ah);
  udelay(20);
  REG_WRITE(ah, AR_BTCOEX_CTRL, 0);
 }

 mci_hw->bt_state = MCI_BT_SLEEP;
 mci_hw->ready = 0;
}
