
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {int maxlen; int workq; int * next_skb; scalar_t__ rcount; int rqueue; scalar_t__ tx_idx; int * tx_skb; int * rx_skb; int * hw; scalar_t__ Flags; } ;


 int INIT_WORK (int *,int ) ;
 int bchannel_bh ;
 int skb_queue_head_init (int *) ;

int
mISDN_initbchannel(struct bchannel *ch, int maxlen)
{
 ch->Flags = 0;
 ch->maxlen = maxlen;
 ch->hw = ((void*)0);
 ch->rx_skb = ((void*)0);
 ch->tx_skb = ((void*)0);
 ch->tx_idx = 0;
 skb_queue_head_init(&ch->rqueue);
 ch->rcount = 0;
 ch->next_skb = ((void*)0);
 INIT_WORK(&ch->workq, bchannel_bh);
 return 0;
}
