
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eic {unsigned int first_irq; } ;


 int IDR ;
 int eic_writel (struct eic*,int ,int) ;
 struct eic* get_irq_chip_data (unsigned int) ;

__attribute__((used)) static void eic_mask_irq(unsigned int irq)
{
 struct eic *eic = get_irq_chip_data(irq);
 eic_writel(eic, IDR, 1 << (irq - eic->first_irq));
}
