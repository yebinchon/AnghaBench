
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_priv {int can_stats; } ;


 int EMSGSIZE ;
 int IFLA_INFO_XSTATS ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 struct can_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int can_fill_xstats(struct sk_buff *skb, const struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 NLA_PUT(skb, IFLA_INFO_XSTATS,
  sizeof(priv->can_stats), &priv->can_stats);

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
