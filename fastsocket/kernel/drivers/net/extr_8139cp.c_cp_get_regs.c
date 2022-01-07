
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_regs {scalar_t__ len; int version; } ;
struct cp_private {int lock; int regs; } ;


 scalar_t__ CP_REGS_SIZE ;
 int CP_REGS_VER ;
 int memcpy_fromio (void*,int ,scalar_t__) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cp_get_regs(struct net_device *dev, struct ethtool_regs *regs,
          void *p)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;

 if (regs->len < CP_REGS_SIZE)
  return ;

 regs->version = CP_REGS_VER;

 spin_lock_irqsave(&cp->lock, flags);
 memcpy_fromio(p, cp->regs, CP_REGS_SIZE);
 spin_unlock_irqrestore(&cp->lock, flags);
}
