
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath9k_hw_mci {int rx_msg_intr; int raw_intr; void* cont_status; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;
typedef enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;


 int AR_MCI_CONT_STATUS ;
 int AR_MCI_INTERRUPT_RAW ;
 int AR_MCI_INTERRUPT_RX_MSG_CONT_INFO ;
 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int ATH9K_INT_MCI ;
 int MCI ;
 void* REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ar9003_mci_get_isr(struct ath_hw *ah, enum ath9k_int *masked)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 raw_intr, rx_msg_intr;

 rx_msg_intr = REG_READ(ah, AR_MCI_INTERRUPT_RX_MSG_RAW);
 raw_intr = REG_READ(ah, AR_MCI_INTERRUPT_RAW);

 if ((raw_intr == 0xdeadbeef) || (rx_msg_intr == 0xdeadbeef)) {
  ath_dbg(common, MCI,
   "MCI gets 0xdeadbeef during int processing\n");
 } else {
  mci->rx_msg_intr |= rx_msg_intr;
  mci->raw_intr |= raw_intr;
  *masked |= ATH9K_INT_MCI;

  if (rx_msg_intr & AR_MCI_INTERRUPT_RX_MSG_CONT_INFO)
   mci->cont_status = REG_READ(ah, AR_MCI_CONT_STATUS);

  REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW, rx_msg_intr);
  REG_WRITE(ah, AR_MCI_INTERRUPT_RAW, raw_intr);
 }
}
