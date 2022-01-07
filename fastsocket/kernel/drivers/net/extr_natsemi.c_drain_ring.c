
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int drain_rx (struct net_device*) ;
 int drain_tx (struct net_device*) ;

__attribute__((used)) static void drain_ring(struct net_device *dev)
{
 drain_rx(dev);
 drain_tx(dev);
}
