
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {int intr_coal_delay_ptr; int intr_coal_delay; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 int htonl (int ) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 int put_be32 (int ,int ) ;

__attribute__((used)) static int
myri10ge_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *coal)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);

 mgp->intr_coal_delay = coal->rx_coalesce_usecs;
 put_be32(htonl(mgp->intr_coal_delay), mgp->intr_coal_delay_ptr);
 return 0;
}
