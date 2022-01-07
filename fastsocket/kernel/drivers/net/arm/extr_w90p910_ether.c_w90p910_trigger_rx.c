
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {scalar_t__ reg; } ;
struct net_device {int dummy; } ;


 int ENSTART ;
 scalar_t__ REG_RSDR ;
 int __raw_writel (int ,scalar_t__) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static void w90p910_trigger_rx(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);

 __raw_writel(ENSTART, ether->reg + REG_RSDR);
}
