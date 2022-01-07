
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omap_ack_irq (unsigned int) ;
 int omap_mask_irq (unsigned int) ;

__attribute__((used)) static void omap_mask_ack_irq(unsigned int irq)
{
 omap_mask_irq(irq);
 omap_ack_irq(irq);
}
