
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * irqs; } ;
struct TYPE_3__ {int * irqs; } ;
struct z8530_dev {int lock; TYPE_2__ chanA; TYPE_1__ chanB; } ;


 int R9 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int write_zsreg (TYPE_2__*,int ,int) ;
 int z8530_nop ;

int z8530_shutdown(struct z8530_dev *dev)
{
 unsigned long flags;


 spin_lock_irqsave(&dev->lock, flags);
 dev->chanA.irqs=&z8530_nop;
 dev->chanB.irqs=&z8530_nop;
 write_zsreg(&dev->chanA, R9, 0xC0);

 udelay(100);
 spin_unlock_irqrestore(&dev->lock, flags);
 return 0;
}
