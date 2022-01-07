
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int ps3_chip_mask (unsigned int) ;
 int ps3_irq_plug_destroy (unsigned int) ;

int ps3_spe_irq_destroy(unsigned int virq)
{
 int result;

 ps3_chip_mask(virq);

 result = ps3_irq_plug_destroy(virq);
 BUG_ON(result);

 return result;
}
