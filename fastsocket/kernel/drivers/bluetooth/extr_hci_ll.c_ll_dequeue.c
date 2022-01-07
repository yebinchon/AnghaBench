
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ll_struct {int txq; } ;
struct hci_uart {struct ll_struct* priv; } ;


 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *ll_dequeue(struct hci_uart *hu)
{
 struct ll_struct *ll = hu->priv;
 return skb_dequeue(&ll->txq);
}
