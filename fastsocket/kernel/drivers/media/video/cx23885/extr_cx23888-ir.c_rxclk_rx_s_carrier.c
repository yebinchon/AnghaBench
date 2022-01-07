
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cx23885_dev {int dummy; } ;


 int CX23888_IR_RXCLK_REG ;
 int carrier_freq_to_clock_divider (unsigned int) ;
 unsigned int clock_divider_to_carrier_freq (int ) ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int ) ;

__attribute__((used)) static unsigned int rxclk_rx_s_carrier(struct cx23885_dev *dev,
           unsigned int freq,
           u16 *divider)
{
 *divider = carrier_freq_to_clock_divider(freq);
 cx23888_ir_write4(dev, CX23888_IR_RXCLK_REG, *divider);
 return clock_divider_to_carrier_freq(*divider);
}
