
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pyxis_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int
pyxis_startup_irq(unsigned int irq)
{
 pyxis_enable_irq(irq);
 return 0;
}
