
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct z8530_channel {TYPE_2__* netdevice; struct sk_buff* tx_skb; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int dev_kfree_skb_irq (struct sk_buff*) ;
 int z8530_tx_begin (struct z8530_channel*) ;

__attribute__((used)) static void z8530_tx_done(struct z8530_channel *c)
{
 struct sk_buff *skb;


 if (c->tx_skb == ((void*)0))
  return;

 skb = c->tx_skb;
 c->tx_skb = ((void*)0);
 z8530_tx_begin(c);
 c->netdevice->stats.tx_packets++;
 c->netdevice->stats.tx_bytes += skb->len;
 dev_kfree_skb_irq(skb);
}
