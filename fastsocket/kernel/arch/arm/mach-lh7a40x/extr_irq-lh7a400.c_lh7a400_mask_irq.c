
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTC_INTENC ;

__attribute__((used)) static void lh7a400_mask_irq (u32 irq)
{
 INTC_INTENC = (1 << irq);
}
