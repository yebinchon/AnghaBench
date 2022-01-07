
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sb1250_irq_owner ;
 int sb1250_unmask_irq (int ,unsigned int) ;

__attribute__((used)) static void enable_sb1250_irq(unsigned int irq)
{
 sb1250_unmask_irq(sb1250_irq_owner[irq], irq);
}
