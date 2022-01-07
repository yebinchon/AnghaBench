
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int superio_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int superio_startup_irq(unsigned int irq)
{
 superio_enable_irq(irq);
 return 0;
}
