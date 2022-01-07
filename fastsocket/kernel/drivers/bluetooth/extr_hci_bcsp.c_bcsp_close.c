
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int tbcsp; int unrel; int rel; int unack; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int del_timer (int *) ;
 int kfree (struct bcsp_struct*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int bcsp_close(struct hci_uart *hu)
{
 struct bcsp_struct *bcsp = hu->priv;
 hu->priv = ((void*)0);

 BT_DBG("hu %p", hu);

 skb_queue_purge(&bcsp->unack);
 skb_queue_purge(&bcsp->rel);
 skb_queue_purge(&bcsp->unrel);
 del_timer(&bcsp->tbcsp);

 kfree(bcsp);
 return 0;
}
