
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {scalar_t__ hcill_state; int hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int BT_ERR (char*,scalar_t__) ;
 scalar_t__ HCILL_ASLEEP_TO_AWAKE ;
 int __ll_do_awake (struct ll_struct*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ll_device_woke_up(struct hci_uart *hu)
{
 unsigned long flags;
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p", hu);


 spin_lock_irqsave(&ll->hcill_lock, flags);


 if (ll->hcill_state != HCILL_ASLEEP_TO_AWAKE)
  BT_ERR("received HCILL_WAKE_UP_ACK in state %ld", ll->hcill_state);


 __ll_do_awake(ll);

 spin_unlock_irqrestore(&ll->hcill_lock, flags);


 hci_uart_tx_wakeup(hu);
}
