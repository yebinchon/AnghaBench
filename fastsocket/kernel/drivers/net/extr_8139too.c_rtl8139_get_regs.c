
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int lock; int mmio_addr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; int version; } ;


 int RTL_REGS_VER ;
 int memcpy_fromio (void*,int ,int ) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ use_io ;

__attribute__((used)) static void rtl8139_get_regs(struct net_device *dev, struct ethtool_regs *regs, void *regbuf)
{
 struct rtl8139_private *tp;


 if (use_io)
  return;
 tp = netdev_priv(dev);

 regs->version = RTL_REGS_VER;

 spin_lock_irq(&tp->lock);
 memcpy_fromio(regbuf, tp->mmio_addr, regs->len);
 spin_unlock_irq(&tp->lock);
}
