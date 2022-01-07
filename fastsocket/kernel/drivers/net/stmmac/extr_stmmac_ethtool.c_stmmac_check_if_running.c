
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EBUSY ;
 int netif_running (struct net_device*) ;

int stmmac_check_if_running(struct net_device *dev)
{
 if (!netif_running(dev))
  return -EBUSY;
 return 0;
}
