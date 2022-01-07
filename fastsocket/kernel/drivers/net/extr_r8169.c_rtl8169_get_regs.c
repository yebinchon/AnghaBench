
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mmio_addr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; } ;


 int R8169_REGS_SIZE ;
 int memcpy_fromio (void*,int ,int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_get_regs(struct net_device *dev, struct ethtool_regs *regs,
        void *p)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 if (regs->len > R8169_REGS_SIZE)
  regs->len = R8169_REGS_SIZE;

 rtl_lock_work(tp);
 memcpy_fromio(p, tp->mmio_addr, regs->len);
 rtl_unlock_work(tp);
}
