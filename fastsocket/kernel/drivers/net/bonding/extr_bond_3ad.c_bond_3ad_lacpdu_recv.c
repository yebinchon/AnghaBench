
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int flags; } ;
struct lacpdu {int dummy; } ;
struct bonding {int lock; } ;


 int GFP_ATOMIC ;
 int IFF_MASTER ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int bond_3ad_rx_indication (struct lacpdu*,struct slave*,int ) ;
 struct slave* bond_get_slave_by_dev (struct bonding*,struct net_device*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int * dev_net (struct net_device*) ;
 int init_net ;
 struct bonding* netdev_priv (struct net_device*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

int bond_3ad_lacpdu_recv(struct sk_buff *skb, struct net_device *dev, struct packet_type* ptype, struct net_device *orig_dev)
{
 struct bonding *bond = netdev_priv(dev);
 struct slave *slave = ((void*)0);
 int ret = NET_RX_DROP;

 if (dev_net(dev) != &init_net)
  goto out;

 if (!(dev->flags & IFF_MASTER))
  goto out;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  goto out;

 if (!pskb_may_pull(skb, sizeof(struct lacpdu)))
  goto out;

 read_lock(&bond->lock);
 slave = bond_get_slave_by_dev((struct bonding *)netdev_priv(dev),
     orig_dev);
 if (!slave)
  goto out_unlock;

 bond_3ad_rx_indication((struct lacpdu *) skb->data, slave, skb->len);

 ret = NET_RX_SUCCESS;

out_unlock:
 read_unlock(&bond->lock);
out:
 dev_kfree_skb(skb);

 return ret;
}
