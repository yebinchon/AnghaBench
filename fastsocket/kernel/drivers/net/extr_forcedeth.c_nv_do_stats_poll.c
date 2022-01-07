
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int stats_poll; int in_shutdown; } ;


 scalar_t__ STATS_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int nv_get_hw_stats (struct net_device*) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void nv_do_stats_poll(unsigned long data)
{
 struct net_device *dev = (struct net_device *) data;
 struct fe_priv *np = netdev_priv(dev);

 nv_get_hw_stats(dev);

 if (!np->in_shutdown)
  mod_timer(&np->stats_poll,
   round_jiffies(jiffies + STATS_INTERVAL));
}
