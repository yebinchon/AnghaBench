
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct veth_priv {scalar_t__ ip_summed; } ;
struct net_device {int dummy; } ;


 scalar_t__ CHECKSUM_UNNECESSARY ;
 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 veth_get_rx_csum(struct net_device *dev)
{
 struct veth_priv *priv;

 priv = netdev_priv(dev);
 return priv->ip_summed == CHECKSUM_UNNECESSARY;
}
