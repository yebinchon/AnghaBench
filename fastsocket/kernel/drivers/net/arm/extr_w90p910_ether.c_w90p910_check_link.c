
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {int check_timer; } ;
struct net_device {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int update_linkspeed (struct net_device*) ;

__attribute__((used)) static void w90p910_check_link(unsigned long dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct w90p910_ether *ether = netdev_priv(dev);

 update_linkspeed(dev);
 mod_timer(&ether->check_timer, jiffies + msecs_to_jiffies(1000));
}
