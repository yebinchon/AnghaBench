
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct can_priv {scalar_t__ bittiming_const; } ;
struct can_ctrlmode {int dummy; } ;
struct can_clock {int dummy; } ;
struct can_bittiming_const {int dummy; } ;
struct can_bittiming {int dummy; } ;


 struct can_priv* netdev_priv (struct net_device const*) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t can_get_size(const struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);
 size_t size;

 size = nla_total_size(sizeof(u32));
 size += sizeof(struct can_ctrlmode);
 size += nla_total_size(sizeof(u32));
 size += sizeof(struct can_bittiming);
 size += sizeof(struct can_clock);
 if (priv->bittiming_const)
  size += sizeof(struct can_bittiming_const);

 return size;
}
