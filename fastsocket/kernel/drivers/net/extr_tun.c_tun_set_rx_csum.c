
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tun_struct {int flags; } ;
struct net_device {int dummy; } ;


 int TUN_NOCHECKSUM ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tun_set_rx_csum(struct net_device *dev, u32 data)
{
 struct tun_struct *tun = netdev_priv(dev);
 if (data)
  tun->flags &= ~TUN_NOCHECKSUM;
 else
  tun->flags |= TUN_NOCHECKSUM;
 return 0;
}
