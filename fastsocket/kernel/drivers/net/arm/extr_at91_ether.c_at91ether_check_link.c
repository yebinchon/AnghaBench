
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct at91_private {int check_timer; } ;


 scalar_t__ LINK_POLL_INTERVAL ;
 int disable_mdi () ;
 int enable_mdi () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct at91_private* netdev_priv (struct net_device*) ;
 int update_linkspeed (struct net_device*,int) ;

__attribute__((used)) static void at91ether_check_link(unsigned long dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct at91_private *lp = netdev_priv(dev);

 enable_mdi();
 update_linkspeed(dev, 1);
 disable_mdi();

 mod_timer(&lp->check_timer, jiffies + LINK_POLL_INTERVAL);
}
