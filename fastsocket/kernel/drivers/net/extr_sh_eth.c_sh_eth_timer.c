
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int timer; } ;
struct net_device {int dummy; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sh_eth_timer(unsigned long data)
{
 struct net_device *ndev = (struct net_device *)data;
 struct sh_eth_private *mdp = netdev_priv(ndev);

 mod_timer(&mdp->timer, jiffies + (10 * HZ));
}
