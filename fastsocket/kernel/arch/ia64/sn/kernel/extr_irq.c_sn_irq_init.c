
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int * chip; } ;


 int IA64_SN2_FIRST_DEVICE_VECTOR ;
 int IA64_SN2_LAST_DEVICE_VECTOR ;
 int NR_IRQS ;
 int ia64_first_device_vector ;
 int ia64_last_device_vector ;
 struct irq_desc* irq_desc ;
 int irq_type_sn ;
 int no_irq_chip ;

void sn_irq_init(void)
{
 int i;
 struct irq_desc *base_desc = irq_desc;

 ia64_first_device_vector = IA64_SN2_FIRST_DEVICE_VECTOR;
 ia64_last_device_vector = IA64_SN2_LAST_DEVICE_VECTOR;

 for (i = 0; i < NR_IRQS; i++) {
  if (base_desc[i].chip == &no_irq_chip) {
   base_desc[i].chip = &irq_type_sn;
  }
 }
}
