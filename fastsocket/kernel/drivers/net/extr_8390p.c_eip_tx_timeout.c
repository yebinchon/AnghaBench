
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __ei_tx_timeout (struct net_device*) ;

void eip_tx_timeout(struct net_device *dev)
{
 __ei_tx_timeout(dev);
}
