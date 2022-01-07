
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int txq; int tx_wait_q; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ll_flush(struct hci_uart *hu)
{
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ll->tx_wait_q);
 skb_queue_purge(&ll->txq);

 return 0;
}
