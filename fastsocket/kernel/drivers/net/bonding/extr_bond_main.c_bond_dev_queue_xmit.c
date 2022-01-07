
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int queue_mapping; } ;
struct netpoll {int dummy; } ;
struct net_device {TYPE_1__* npinfo; } ;
struct bonding {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_1__* npinfo; } ;
struct TYPE_5__ {int bond_queue_mapping; } ;
struct TYPE_4__ {struct netpoll* netpoll; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 int netpoll_send_skb_on_dev (struct netpoll*,struct sk_buff*,struct net_device*) ;
 int netpoll_tx_running (TYPE_3__*) ;
 TYPE_2__* qdisc_skb_cb (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int bond_dev_queue_xmit(struct bonding *bond, struct sk_buff *skb,
   struct net_device *slave_dev)
{
 skb->queue_mapping = qdisc_skb_cb(skb)->bond_queue_mapping;
 skb->dev = slave_dev;







  dev_queue_xmit(skb);

 return 0;
}
