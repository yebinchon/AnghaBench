
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ll_struct {int hcill_state; int hcill_lock; int tx_wait_q; int txq; } ;
struct hci_uart {struct ll_struct* priv; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*,...) ;



 int HCILL_WAKE_UP_IND ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int send_hcill_cmd (int ,struct hci_uart*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ll_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 unsigned long flags = 0;
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p skb %p", hu, skb);


 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);


 spin_lock_irqsave(&ll->hcill_lock, flags);


 switch (ll->hcill_state) {
 case 128:
  BT_DBG("device awake, sending normally");
  skb_queue_tail(&ll->txq, skb);
  break;
 case 130:
  BT_DBG("device asleep, waking up and queueing packet");

  skb_queue_tail(&ll->tx_wait_q, skb);

  if (send_hcill_cmd(HCILL_WAKE_UP_IND, hu) < 0) {
   BT_ERR("cannot wake up device");
   break;
  }
  ll->hcill_state = 129;
  break;
 case 129:
  BT_DBG("device waking up, queueing packet");

  skb_queue_tail(&ll->tx_wait_q, skb);
  break;
 default:
  BT_ERR("illegal hcill state: %ld (losing packet)", ll->hcill_state);
  kfree_skb(skb);
  break;
 }

 spin_unlock_irqrestore(&ll->hcill_lock, flags);

 return 0;
}
