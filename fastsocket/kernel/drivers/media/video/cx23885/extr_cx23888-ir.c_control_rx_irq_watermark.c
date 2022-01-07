
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;
typedef enum rx_fifo_watermark { ____Placeholder_rx_fifo_watermark } rx_fifo_watermark ;


 int CNTRL_RIC ;
 int CX23888_IR_CNTRL_REG ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int ,int) ;

__attribute__((used)) static inline void control_rx_irq_watermark(struct cx23885_dev *dev,
         enum rx_fifo_watermark level)
{
 cx23888_ir_and_or4(dev, CX23888_IR_CNTRL_REG, ~CNTRL_RIC, level);
}
