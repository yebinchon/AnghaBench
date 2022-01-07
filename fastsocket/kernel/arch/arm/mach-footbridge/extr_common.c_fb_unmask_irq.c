
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CSR_IRQ_ENABLE ;
 size_t _DC21285_INR (unsigned int) ;
 int * fb_irq_mask ;

__attribute__((used)) static void fb_unmask_irq(unsigned int irq)
{
 *CSR_IRQ_ENABLE = fb_irq_mask[_DC21285_INR(irq)];
}
