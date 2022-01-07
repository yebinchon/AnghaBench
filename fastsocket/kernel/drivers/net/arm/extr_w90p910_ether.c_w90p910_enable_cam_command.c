
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {scalar_t__ reg; } ;
struct net_device {int dummy; } ;


 unsigned int CAMCMR_ABP ;
 unsigned int CAMCMR_AMP ;
 unsigned int CAMCMR_ECMP ;
 scalar_t__ REG_CAMCMR ;
 int __raw_writel (unsigned int,scalar_t__) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static void w90p910_enable_cam_command(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 unsigned int val;

 val = CAMCMR_ECMP | CAMCMR_ABP | CAMCMR_AMP;
 __raw_writel(val, ether->reg + REG_CAMCMR);
}
