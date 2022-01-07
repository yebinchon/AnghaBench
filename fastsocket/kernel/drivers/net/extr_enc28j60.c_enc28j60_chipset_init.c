
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enc28j60_net {int dummy; } ;


 int enc28j60_hw_init (struct enc28j60_net*) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enc28j60_chipset_init(struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);

 return enc28j60_hw_init(priv);
}
