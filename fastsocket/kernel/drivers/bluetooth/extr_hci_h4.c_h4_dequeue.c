
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int txq; } ;


 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *h4_dequeue(struct hci_uart *hu)
{
 struct h4_struct *h4 = hu->priv;
 return skb_dequeue(&h4->txq);
}
