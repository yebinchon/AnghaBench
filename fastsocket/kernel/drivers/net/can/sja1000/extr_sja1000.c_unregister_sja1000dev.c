
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int set_reset_mode (struct net_device*) ;
 int unregister_candev (struct net_device*) ;

void unregister_sja1000dev(struct net_device *dev)
{
 set_reset_mode(dev);
 unregister_candev(dev);
}
