
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {scalar_t__ reg; } ;
struct net_device {int dummy; } ;


 scalar_t__ S6_GMAC_MACCONF1 ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void s6gmac_stop_device(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 writel(0, pd->reg + S6_GMAC_MACCONF1);
}
