
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int owner; int group; } ;
struct net_device {int destructor; int * ethtool_ops; } ;


 struct tun_struct* netdev_priv (struct net_device*) ;
 int tun_ethtool_ops ;
 int tun_free_netdev ;

__attribute__((used)) static void tun_setup(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 tun->owner = -1;
 tun->group = -1;

 dev->ethtool_ops = &tun_ethtool_ops;
 dev->destructor = tun_free_netdev;
}
