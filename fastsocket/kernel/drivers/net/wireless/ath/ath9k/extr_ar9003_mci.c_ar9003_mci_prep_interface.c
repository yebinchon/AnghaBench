
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; int update_2g5g; scalar_t__ is_2g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int AR_MCI_BT_PRI ;
 int AR_MCI_BT_PRI0 ;
 int AR_MCI_BT_PRI1 ;
 int AR_MCI_BT_PRI2 ;
 int AR_MCI_BT_PRI3 ;
 int AR_MCI_INTERRUPT_BT_PRI ;
 int AR_MCI_INTERRUPT_EN ;
 int AR_MCI_INTERRUPT_RAW ;
 int AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE ;
 int AR_MCI_INTERRUPT_RX_MSG_CONT_RST ;
 int AR_MCI_INTERRUPT_RX_MSG_LNA_INFO ;
 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING ;
 int AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING ;
 int MCI ;
 scalar_t__ MCI_BT_AWAKE ;
 scalar_t__ MCI_BT_SLEEP ;
 int REG_READ (struct ath_hw*,int ) ;
 scalar_t__ REG_READ_FIELD (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9003_mci_remote_reset (struct ath_hw*,int) ;
 int ar9003_mci_send_lna_transfer (struct ath_hw*,int) ;
 int ar9003_mci_send_req_wake (struct ath_hw*,int) ;
 int ar9003_mci_send_sys_waking (struct ath_hw*,int) ;
 scalar_t__ ar9003_mci_wait_for_interrupt (struct ath_hw*,int ,int,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_mci_prep_interface(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 saved_mci_int_en;
 u32 mci_timeout = 150;

 mci->bt_state = MCI_BT_SLEEP;
 saved_mci_int_en = REG_READ(ah, AR_MCI_INTERRUPT_EN);

 REG_WRITE(ah, AR_MCI_INTERRUPT_EN, 0);
 REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
    REG_READ(ah, AR_MCI_INTERRUPT_RX_MSG_RAW));
 REG_WRITE(ah, AR_MCI_INTERRUPT_RAW,
    REG_READ(ah, AR_MCI_INTERRUPT_RAW));

 ar9003_mci_remote_reset(ah, 1);
 ar9003_mci_send_req_wake(ah, 1);

 if (!ar9003_mci_wait_for_interrupt(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
      AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, 500))
  goto clear_redunt;

 mci->bt_state = MCI_BT_AWAKE;
 ar9003_mci_send_sys_waking(ah, 1);
 udelay(10);





 REG_WRITE(ah, AR_MCI_BT_PRI0, 0xFFFFFFFF);
 REG_WRITE(ah, AR_MCI_BT_PRI1, 0xFFFFFFFF);
 REG_WRITE(ah, AR_MCI_BT_PRI2, 0xFFFFFFFF);
 REG_WRITE(ah, AR_MCI_BT_PRI3, 0xFFFFFFFF);
 REG_WRITE(ah, AR_MCI_BT_PRI, 0X000000FF);







 REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
    AR_MCI_INTERRUPT_RX_MSG_CONT_RST);
 REG_WRITE(ah, AR_MCI_INTERRUPT_RAW, AR_MCI_INTERRUPT_BT_PRI);

 if (mci->is_2g) {
  ar9003_mci_send_lna_transfer(ah, 1);
  udelay(5);
 }

 if ((mci->is_2g && !mci->update_2g5g)) {
  if (ar9003_mci_wait_for_interrupt(ah,
     AR_MCI_INTERRUPT_RX_MSG_RAW,
     AR_MCI_INTERRUPT_RX_MSG_LNA_INFO,
     mci_timeout))
   ath_dbg(common, MCI,
    "MCI WLAN has control over the LNA & BT obeys it\n");
  else
   ath_dbg(common, MCI,
    "MCI BT didn't respond to LNA_TRANS\n");
 }

clear_redunt:

 if ((mci->bt_state == MCI_BT_AWAKE) &&
     (REG_READ_FIELD(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
       AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING)) &&
     (REG_READ_FIELD(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
       AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING) == 0)) {
  REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
     AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING);
  REG_WRITE(ah, AR_MCI_INTERRUPT_RAW,
     AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE);
 }

 REG_WRITE(ah, AR_MCI_INTERRUPT_EN, saved_mci_int_en);
}
