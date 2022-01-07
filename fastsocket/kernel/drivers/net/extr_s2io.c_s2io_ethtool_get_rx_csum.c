
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s2io_nic {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct s2io_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 s2io_ethtool_get_rx_csum(struct net_device *dev)
{
 struct s2io_nic *sp = netdev_priv(dev);

 return sp->rx_csum;
}
