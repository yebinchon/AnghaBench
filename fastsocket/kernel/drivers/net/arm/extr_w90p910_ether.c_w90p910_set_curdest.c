
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {scalar_t__ reg; int start_tx_ptr; int start_rx_ptr; } ;
struct net_device {int dummy; } ;


 scalar_t__ REG_RXDLSA ;
 scalar_t__ REG_TXDLSA ;
 int __raw_writel (int ,scalar_t__) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static void w90p910_set_curdest(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);

 __raw_writel(ether->start_rx_ptr, ether->reg + REG_RXDLSA);
 __raw_writel(ether->start_tx_ptr, ether->reg + REG_TXDLSA);
}
