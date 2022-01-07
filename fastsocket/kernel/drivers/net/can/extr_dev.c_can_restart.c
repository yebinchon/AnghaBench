
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; struct net_device* dev; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; struct net_device_stats stats; } ;
struct TYPE_3__ {int restarts; } ;
struct can_priv {int (* do_set_mode ) (struct net_device*,int ) ;TYPE_1__ can_stats; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; } ;


 int BUG_ON (int ) ;
 scalar_t__ CAN_ERR_DLC ;
 int CAN_ERR_FLAG ;
 int CAN_ERR_RESTARTED ;
 int CAN_MODE_START ;
 int ENOMEM ;
 int ETH_P_CAN ;
 int can_flush_echo_skb (struct net_device*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int htons (int ) ;
 int memset (struct can_frame*,int ,int) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int stub1 (struct net_device*,int ) ;

void can_restart(unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct can_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct sk_buff *skb;
 struct can_frame *cf;
 int err;

 BUG_ON(netif_carrier_ok(dev));





 can_flush_echo_skb(dev);


 skb = dev_alloc_skb(sizeof(struct can_frame));
 if (skb == ((void*)0)) {
  err = -ENOMEM;
  goto restart;
 }
 skb->dev = dev;
 skb->protocol = htons(ETH_P_CAN);
 cf = (struct can_frame *)skb_put(skb, sizeof(struct can_frame));
 memset(cf, 0, sizeof(struct can_frame));
 cf->can_id = CAN_ERR_FLAG | CAN_ERR_RESTARTED;
 cf->can_dlc = CAN_ERR_DLC;

 netif_rx(skb);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;

restart:
 dev_dbg(dev->dev.parent, "restarted\n");
 priv->can_stats.restarts++;


 err = priv->do_set_mode(dev, CAN_MODE_START);

 netif_carrier_on(dev);
 if (err)
  dev_err(dev->dev.parent, "Error %d during restart", err);
}
