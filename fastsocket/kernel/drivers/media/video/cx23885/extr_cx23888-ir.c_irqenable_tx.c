
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int CX23888_IR_IRQEN_REG ;
 int IRQEN_TSE ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int ,int ) ;

__attribute__((used)) static inline void irqenable_tx(struct cx23885_dev *dev, u32 mask)
{
 mask &= IRQEN_TSE;
 cx23888_ir_and_or4(dev, CX23888_IR_IRQEN_REG, ~IRQEN_TSE, mask);
}
