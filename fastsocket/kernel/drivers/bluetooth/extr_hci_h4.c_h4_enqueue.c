
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int txq; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,struct hci_uart*,struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int h4_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct h4_struct *h4 = hu->priv;

 BT_DBG("hu %p skb %p", hu, skb);


 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);
 skb_queue_tail(&h4->txq, skb);

 return 0;
}
