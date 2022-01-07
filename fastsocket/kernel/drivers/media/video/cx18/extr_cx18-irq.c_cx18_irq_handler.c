
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int sw1_irq_mask; int sw2_irq_mask; int hw2_irq_mask; } ;
typedef int irqreturn_t ;


 int CX18_DEBUG_HI_IRQ (char*,int,int,int) ;
 int HW2_INT_CLR_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SW1_INT_STATUS ;
 int SW2_INT_STATUS ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg_expect (struct cx18*,int,int ,int,int) ;
 int epu_cmd (struct cx18*,int) ;
 int xpu_ack (struct cx18*,int) ;

irqreturn_t cx18_irq_handler(int irq, void *dev_id)
{
 struct cx18 *cx = (struct cx18 *)dev_id;
 u32 sw1, sw2, hw2;

 sw1 = cx18_read_reg(cx, SW1_INT_STATUS) & cx->sw1_irq_mask;
 sw2 = cx18_read_reg(cx, SW2_INT_STATUS) & cx->sw2_irq_mask;
 hw2 = cx18_read_reg(cx, HW2_INT_CLR_STATUS) & cx->hw2_irq_mask;

 if (sw1)
  cx18_write_reg_expect(cx, sw1, SW1_INT_STATUS, ~sw1, sw1);
 if (sw2)
  cx18_write_reg_expect(cx, sw2, SW2_INT_STATUS, ~sw2, sw2);
 if (hw2)
  cx18_write_reg_expect(cx, hw2, HW2_INT_CLR_STATUS, ~hw2, hw2);

 if (sw1 || sw2 || hw2)
  CX18_DEBUG_HI_IRQ("received interrupts "
      "SW1: %x  SW2: %x  HW2: %x\n", sw1, sw2, hw2);





 if (sw1)
  epu_cmd(cx, sw1);






 if (sw2)
  xpu_ack(cx, sw2);

 return (sw1 || sw2 || hw2) ? IRQ_HANDLED : IRQ_NONE;
}
