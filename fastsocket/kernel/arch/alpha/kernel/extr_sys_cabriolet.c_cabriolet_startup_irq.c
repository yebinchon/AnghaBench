
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cabriolet_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int
cabriolet_startup_irq(unsigned int irq)
{
 cabriolet_enable_irq(irq);
 return 0;
}
