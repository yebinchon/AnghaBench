
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct t7l66xb {unsigned int irq_base; int lock; scalar_t__ scr; } ;


 scalar_t__ SCR_IMR ;
 struct t7l66xb* get_irq_chip_data (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void t7l66xb_irq_mask(unsigned int irq)
{
 struct t7l66xb *t7l66xb = get_irq_chip_data(irq);
 unsigned long flags;
 u8 imr;

 spin_lock_irqsave(&t7l66xb->lock, flags);
 imr = tmio_ioread8(t7l66xb->scr + SCR_IMR);
 imr |= 1 << (irq - t7l66xb->irq_base);
 tmio_iowrite8(imr, t7l66xb->scr + SCR_IMR);
 spin_unlock_irqrestore(&t7l66xb->lock, flags);
}
