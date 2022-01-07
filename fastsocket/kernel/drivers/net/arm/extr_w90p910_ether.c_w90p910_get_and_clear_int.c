
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {scalar_t__ reg; } ;
struct net_device {int dummy; } ;


 scalar_t__ REG_MISTA ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static void w90p910_get_and_clear_int(struct net_device *dev,
       unsigned int *val)
{
 struct w90p910_ether *ether = netdev_priv(dev);

 *val = __raw_readl(ether->reg + REG_MISTA);
 __raw_writel(*val, ether->reg + REG_MISTA);
}
