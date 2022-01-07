
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_local {size_t out_idx; int sk_count; TYPE_5__** skbs; TYPE_1__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {struct net_local* netif; } ;
typedef TYPE_3__ hysdn_card ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_7__ {int tx_bytes; int tx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 size_t MAX_SKB_BUFFERS ;
 int dev_kfree_skb (TYPE_5__*) ;
 int netif_start_queue (struct net_device*) ;

void
hysdn_tx_netack(hysdn_card * card)
{
 struct net_local *lp = card->netif;

 if (!lp)
  return;


 if (!lp->sk_count)
  return;

 lp->dev->stats.tx_packets++;
 lp->dev->stats.tx_bytes += lp->skbs[lp->out_idx]->len;

 dev_kfree_skb(lp->skbs[lp->out_idx++]);
 if (lp->out_idx >= MAX_SKB_BUFFERS)
  lp->out_idx = 0;

 if (lp->sk_count-- == MAX_SKB_BUFFERS)
  netif_start_queue((struct net_device *) lp);
}
