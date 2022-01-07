
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ elp_device ;


 int HCR_VAL (struct net_device*) ;
 int HSF_PCB_MASK ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outb_control (int,struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void set_hsf(struct net_device *dev, int hsf)
{
 elp_device *adapter = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&adapter->lock, flags);
 outb_control((HCR_VAL(dev) & ~HSF_PCB_MASK) | hsf, dev);
 spin_unlock_irqrestore(&adapter->lock, flags);
}
