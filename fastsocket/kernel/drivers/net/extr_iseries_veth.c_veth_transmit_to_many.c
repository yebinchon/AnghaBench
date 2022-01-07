
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int HvLpIndexMap ;


 int HVMAXARCHITECTEDLPS ;
 scalar_t__ veth_transmit_to_one (struct sk_buff*,int,struct net_device*) ;

__attribute__((used)) static void veth_transmit_to_many(struct sk_buff *skb,
       HvLpIndexMap lpmask,
       struct net_device *dev)
{
 int i, success, error;

 success = error = 0;

 for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
  if ((lpmask & (1 << i)) == 0)
   continue;

  if (veth_transmit_to_one(skb, i, dev))
   error = 1;
  else
   success = 1;
 }

 if (error)
  dev->stats.tx_errors++;

 if (success) {
  dev->stats.tx_packets++;
  dev->stats.tx_bytes += skb->len;
 }
}
