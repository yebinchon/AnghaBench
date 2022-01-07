
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTC_INTENS ;

__attribute__((used)) static void lh7a400_unmask_irq (u32 irq)
{
 INTC_INTENS = (1 << irq);
}
