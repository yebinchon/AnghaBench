
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mkiss {int * tty; } ;


 int ENODEV ;
 struct mkiss* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ax_open_dev(struct net_device *dev)
{
 struct mkiss *ax = netdev_priv(dev);

 if (ax->tty == ((void*)0))
  return -ENODEV;

 return 0;
}
