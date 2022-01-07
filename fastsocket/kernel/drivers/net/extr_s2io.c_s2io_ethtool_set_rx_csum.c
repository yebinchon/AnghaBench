
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct s2io_nic {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct s2io_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int s2io_ethtool_set_rx_csum(struct net_device *dev, u32 data)
{
 struct s2io_nic *sp = netdev_priv(dev);

 if (data)
  sp->rx_csum = 1;
 else
  sp->rx_csum = 0;

 return 0;
}
