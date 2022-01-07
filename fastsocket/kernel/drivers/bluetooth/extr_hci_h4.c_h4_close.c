
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int rx_skb; int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int kfree (struct h4_struct*) ;
 int kfree_skb (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int h4_close(struct hci_uart *hu)
{
 struct h4_struct *h4 = hu->priv;

 hu->priv = ((void*)0);

 BT_DBG("hu %p", hu);

 skb_queue_purge(&h4->txq);

 kfree_skb(h4->rx_skb);

 hu->priv = ((void*)0);
 kfree(h4);

 return 0;
}
