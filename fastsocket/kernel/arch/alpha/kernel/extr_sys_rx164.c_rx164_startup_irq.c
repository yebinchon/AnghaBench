
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rx164_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int
rx164_startup_irq(unsigned int irq)
{
 rx164_enable_irq(irq);
 return 0;
}
