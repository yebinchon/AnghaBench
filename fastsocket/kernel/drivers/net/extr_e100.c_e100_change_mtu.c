
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_ZLEN ;

__attribute__((used)) static int e100_change_mtu(struct net_device *netdev, int new_mtu)
{
 if (new_mtu < ETH_ZLEN || new_mtu > ETH_DATA_LEN)
  return -EINVAL;
 netdev->mtu = new_mtu;
 return 0;
}
