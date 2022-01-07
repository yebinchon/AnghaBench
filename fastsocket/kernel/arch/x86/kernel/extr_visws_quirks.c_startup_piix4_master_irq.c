
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_8259A (int ) ;
 unsigned int startup_cobalt_irq (unsigned int) ;

__attribute__((used)) static unsigned int startup_piix4_master_irq(unsigned int irq)
{
 init_8259A(0);

 return startup_cobalt_irq(irq);
}
