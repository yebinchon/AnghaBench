
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tun_struct {int flags; } ;
struct net_device {int dummy; } ;


 int TUN_NOCHECKSUM ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 tun_get_rx_csum(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);
 return (tun->flags & TUN_NOCHECKSUM) == 0;
}
