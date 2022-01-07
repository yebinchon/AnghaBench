
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int sw2_irq_mask; } ;


 int SW2_INT_ENABLE_PCI ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg (struct cx18*,int,int ) ;

void cx18_sw2_irq_disable(struct cx18 *cx, u32 val)
{
 cx->sw2_irq_mask = cx18_read_reg(cx, SW2_INT_ENABLE_PCI) & ~val;
 cx18_write_reg(cx, cx->sw2_irq_mask, SW2_INT_ENABLE_PCI);
}
