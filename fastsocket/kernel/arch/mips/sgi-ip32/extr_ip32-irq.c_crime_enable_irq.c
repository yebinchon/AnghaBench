
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int imask; } ;


 unsigned int CRIME_IRQ_BASE ;
 TYPE_1__* crime ;
 int crime_mask ;

__attribute__((used)) static inline void crime_enable_irq(unsigned int irq)
{
 unsigned int bit = irq - CRIME_IRQ_BASE;

 crime_mask |= 1 << bit;
 crime->imask = crime_mask;
}
