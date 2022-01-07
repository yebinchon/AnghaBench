
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int MAX_TCP_HEADER ;
 int XEN_NETIF_MAX_TX_SIZE ;
 scalar_t__ xennet_can_sg (struct net_device*) ;

__attribute__((used)) static int xennet_change_mtu(struct net_device *dev, int mtu)
{
 int max = xennet_can_sg(dev) ?
  XEN_NETIF_MAX_TX_SIZE - MAX_TCP_HEADER : ETH_DATA_LEN;

 if (mtu > max)
  return -EINVAL;
 dev->mtu = mtu;
 return 0;
}
