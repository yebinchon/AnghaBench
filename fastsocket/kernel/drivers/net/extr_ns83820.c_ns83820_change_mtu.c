
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int RX_BUF_SIZE ;

__attribute__((used)) static int ns83820_change_mtu(struct net_device *ndev, int new_mtu)
{
 if (new_mtu > RX_BUF_SIZE)
  return -EINVAL;
 ndev->mtu = new_mtu;
 return 0;
}
