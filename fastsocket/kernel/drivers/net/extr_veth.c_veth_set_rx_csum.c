
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct veth_priv {int ip_summed; } ;
struct net_device {int dummy; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int veth_set_rx_csum(struct net_device *dev, u32 data)
{
 struct veth_priv *priv;

 priv = netdev_priv(dev);
 priv->ip_summed = data ? CHECKSUM_UNNECESSARY : CHECKSUM_NONE;
 return 0;
}
