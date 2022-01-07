
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {scalar_t__ reg; } ;
struct net_device {int dummy; } ;


 unsigned int BLENGTH ;
 scalar_t__ REG_FFTCR ;
 unsigned int TXTHD ;
 int __raw_writel (unsigned int,scalar_t__) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static void w90p910_set_fifo_threshold(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 unsigned int val;

 val = TXTHD | BLENGTH;
 __raw_writel(val, ether->reg + REG_FFTCR);
}
