
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {scalar_t__ bt_state; int query_bt; int need_flush_btinfo; int ready; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_BT_AWAKE ;
 int ar9003_mci_2g5g_switch (struct ath_hw*,int) ;
 int ar9003_mci_sync_bt_state (struct ath_hw*) ;

void ar9003_mci_check_bt(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;

 if (!mci_hw->ready)
  return;





 ar9003_mci_sync_bt_state(ah);
 ar9003_mci_2g5g_switch(ah, 1);

 if ((mci_hw->bt_state == MCI_BT_AWAKE) &&
     (mci_hw->query_bt == 1)) {
  mci_hw->need_flush_btinfo = 1;
 }
}
