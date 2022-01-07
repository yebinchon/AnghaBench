
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char state; int lock; int base; } ;


 TYPE_1__ dev3 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (unsigned char,int ) ;

void set_latch_u5(unsigned char or_mask, unsigned char nand_mask)
{
 unsigned long flags;

 spin_lock_irqsave(&dev3.lock, flags);

 dev3.state = (dev3.state | or_mask) & ~nand_mask;
 writeb(dev3.state, dev3.base);

 spin_unlock_irqrestore(&dev3.lock, flags);
}
