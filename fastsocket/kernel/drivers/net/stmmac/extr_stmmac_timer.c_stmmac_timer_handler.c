
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int stmmac_schedule (struct net_device*) ;

__attribute__((used)) static void stmmac_timer_handler(void *data)
{
 struct net_device *dev = (struct net_device *)data;

 stmmac_schedule(dev);

 return;
}
