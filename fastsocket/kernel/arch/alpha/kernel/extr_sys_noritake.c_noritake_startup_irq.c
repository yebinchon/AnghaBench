
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int noritake_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int
noritake_startup_irq(unsigned int irq)
{
 noritake_enable_irq(irq);
 return 0;
}
