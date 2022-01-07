
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;


 int CNTRL_RFE ;
 int CNTRL_RXE ;
 int CX23888_IR_CNTRL_REG ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int,int) ;

__attribute__((used)) static inline void control_rx_enable(struct cx23885_dev *dev, bool enable)
{
 cx23888_ir_and_or4(dev, CX23888_IR_CNTRL_REG, ~(CNTRL_RXE | CNTRL_RFE),
      enable ? (CNTRL_RXE | CNTRL_RFE) : 0);
}
