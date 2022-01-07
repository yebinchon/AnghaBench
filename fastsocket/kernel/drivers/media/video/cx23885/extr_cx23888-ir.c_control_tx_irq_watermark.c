
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;
typedef enum tx_fifo_watermark { ____Placeholder_tx_fifo_watermark } tx_fifo_watermark ;


 int CNTRL_TIC ;
 int CX23888_IR_CNTRL_REG ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int ,int) ;

__attribute__((used)) static inline void control_tx_irq_watermark(struct cx23885_dev *dev,
         enum tx_fifo_watermark level)
{
 cx23888_ir_and_or4(dev, CX23888_IR_CNTRL_REG, ~CNTRL_TIC, level);
}
