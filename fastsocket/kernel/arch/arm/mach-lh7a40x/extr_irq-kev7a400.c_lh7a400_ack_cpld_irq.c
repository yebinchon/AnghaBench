
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPLD_CL_INT ;
 int IRQ_KEV7A400_CPLD ;

__attribute__((used)) static void
lh7a400_ack_cpld_irq (u32 irq)
{
 CPLD_CL_INT = 1 << (irq - IRQ_KEV7A400_CPLD);
}
