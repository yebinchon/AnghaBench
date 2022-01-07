
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VIC1_INTENCLR ;

__attribute__((used)) static void lh7a404_vic1_mask_irq (u32 irq)
{
 VIC1_INTENCLR = (1 << irq);
}
