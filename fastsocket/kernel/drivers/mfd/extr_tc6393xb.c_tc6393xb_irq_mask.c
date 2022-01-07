
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc6393xb {unsigned int irq_base; int lock; scalar_t__ scr; } ;


 scalar_t__ SCR_IMR ;
 struct tc6393xb* get_irq_chip_data (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void tc6393xb_irq_mask(unsigned int irq)
{
 struct tc6393xb *tc6393xb = get_irq_chip_data(irq);
 unsigned long flags;
 u8 imr;

 spin_lock_irqsave(&tc6393xb->lock, flags);
 imr = tmio_ioread8(tc6393xb->scr + SCR_IMR);
 imr |= 1 << (irq - tc6393xb->irq_base);
 tmio_iowrite8(imr, tc6393xb->scr + SCR_IMR);
 spin_unlock_irqrestore(&tc6393xb->lock, flags);
}
