
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_mappi3_irq (unsigned int) ;

__attribute__((used)) static unsigned int startup_mappi3_irq(unsigned int irq)
{
 enable_mappi3_irq(irq);
 return (0);
}
