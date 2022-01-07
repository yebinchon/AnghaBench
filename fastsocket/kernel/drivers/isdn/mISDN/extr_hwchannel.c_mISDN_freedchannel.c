
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dchannel {int rqueue; int squeue; int * rx_skb; int * tx_skb; } ;


 int dev_kfree_skb (int *) ;
 int flush_scheduled_work () ;
 int skb_queue_purge (int *) ;

int
mISDN_freedchannel(struct dchannel *ch)
{
 if (ch->tx_skb) {
  dev_kfree_skb(ch->tx_skb);
  ch->tx_skb = ((void*)0);
 }
 if (ch->rx_skb) {
  dev_kfree_skb(ch->rx_skb);
  ch->rx_skb = ((void*)0);
 }
 skb_queue_purge(&ch->squeue);
 skb_queue_purge(&ch->rqueue);
 flush_scheduled_work();
 return 0;
}
