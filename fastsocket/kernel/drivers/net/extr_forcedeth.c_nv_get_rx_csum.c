
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fe_priv {scalar_t__ rx_csum; } ;


 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 nv_get_rx_csum(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);
 return (np->rx_csum) != 0;
}
