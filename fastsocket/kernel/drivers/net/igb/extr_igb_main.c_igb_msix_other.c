
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int doosync; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int eims_other; int ptp_tx_work; int watchdog_timer; int state; TYPE_1__ stats; int reset_task; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int E1000_EIMS ;
 int E1000_ICR ;
 int E1000_ICR_DOUTSYNC ;
 int E1000_ICR_DRSTA ;
 int E1000_ICR_LSC ;
 int E1000_ICR_TS ;
 int E1000_ICR_VMMB ;
 int E1000_TSICR ;
 int E1000_TSICR_TXTS ;
 int IRQ_HANDLED ;
 int __IGB_DOWN ;
 int igb_check_wvbr (struct igb_adapter*) ;
 int igb_msg_task (struct igb_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int) ;

__attribute__((used)) static irqreturn_t igb_msix_other(int irq, void *data)
{
 struct igb_adapter *adapter = data;
 struct e1000_hw *hw = &adapter->hw;
 u32 icr = rd32(E1000_ICR);


 if (icr & E1000_ICR_DRSTA)
  schedule_work(&adapter->reset_task);

 if (icr & E1000_ICR_DOUTSYNC) {

  adapter->stats.doosync++;




  igb_check_wvbr(adapter);
 }


 if (icr & E1000_ICR_VMMB)
  igb_msg_task(adapter);

 if (icr & E1000_ICR_LSC) {
  hw->mac.get_link_status = 1;

  if (!test_bit(__IGB_DOWN, &adapter->state))
   mod_timer(&adapter->watchdog_timer, jiffies + 1);
 }

 if (icr & E1000_ICR_TS) {
  u32 tsicr = rd32(E1000_TSICR);

  if (tsicr & E1000_TSICR_TXTS) {

   wr32(E1000_TSICR, E1000_TSICR_TXTS);

   schedule_work(&adapter->ptp_tx_work);
  }
 }

 wr32(E1000_EIMS, adapter->eims_other);

 return IRQ_HANDLED;
}
