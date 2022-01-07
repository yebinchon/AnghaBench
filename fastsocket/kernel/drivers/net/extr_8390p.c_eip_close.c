
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __ei_close (struct net_device*) ;

int eip_close(struct net_device *dev)
{
 return __ei_close(dev);
}
