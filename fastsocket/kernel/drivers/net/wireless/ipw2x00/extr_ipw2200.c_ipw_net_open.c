
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IPW_DEBUG_INFO (char*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int ipw_net_open(struct net_device *dev)
{
 IPW_DEBUG_INFO("dev->open\n");
 netif_start_queue(dev);
 return 0;
}
