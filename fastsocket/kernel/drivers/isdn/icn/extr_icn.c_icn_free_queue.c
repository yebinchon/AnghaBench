
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff** xskb; scalar_t__* sndcount; scalar_t__* xlen; struct sk_buff_head* spqueue; } ;
typedef TYPE_1__ icn_card ;


 int dev_kfree_skb (struct sk_buff*) ;
 int skb_queue_purge (struct sk_buff_head*) ;

__attribute__((used)) static void
icn_free_queue(icn_card * card, int channel)
{
 struct sk_buff_head *queue = &card->spqueue[channel];
 struct sk_buff *skb;

 skb_queue_purge(queue);
 card->xlen[channel] = 0;
 card->sndcount[channel] = 0;
 if ((skb = card->xskb[channel])) {
  card->xskb[channel] = ((void*)0);
  dev_kfree_skb(skb);
 }
}
