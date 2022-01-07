
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int flags; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int SKY2_FLAG_AUTO_SPEED ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int sky2_phy_reinit (struct sky2_port*) ;
 int sky2_set_multicast (struct net_device*) ;

__attribute__((used)) static int sky2_nway_reset(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 if (!netif_running(dev) || !(sky2->flags & SKY2_FLAG_AUTO_SPEED))
  return -EINVAL;

 sky2_phy_reinit(sky2);
 sky2_set_multicast(dev);

 return 0;
}
