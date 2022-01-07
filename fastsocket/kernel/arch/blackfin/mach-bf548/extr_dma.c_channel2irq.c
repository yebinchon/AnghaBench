
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_EPPI0 ;
 int IRQ_EPPI1 ;
 int IRQ_EPPI2 ;
 int IRQ_MDMAS0 ;
 int IRQ_MDMAS1 ;
 int IRQ_MDMAS2 ;
 int IRQ_MDMAS3 ;
 int IRQ_PIXC_IN0 ;
 int IRQ_PIXC_IN1 ;
 int IRQ_PIXC_OUT ;
 int IRQ_SDH ;
 int IRQ_SPI0 ;
 int IRQ_SPI1 ;
 int IRQ_SPI2 ;
 int IRQ_SPORT0_RX ;
 int IRQ_SPORT0_TX ;
 int IRQ_SPORT1_RX ;
 int IRQ_SPORT1_TX ;
 int IRQ_SPORT2_RX ;
 int IRQ_SPORT2_TX ;
 int IRQ_SPORT3_RX ;
 int IRQ_SPORT3_TX ;
 int IRQ_UART0_RX ;
 int IRQ_UART0_TX ;
 int IRQ_UART1_RX ;
 int IRQ_UART1_TX ;

int channel2irq(unsigned int channel)
{
 int ret_irq = -1;

 switch (channel) {
 case 139:
  ret_irq = IRQ_SPORT0_RX;
  break;
 case 138:
  ret_irq = IRQ_SPORT0_TX;
  break;
 case 137:
  ret_irq = IRQ_SPORT1_RX;
  break;
 case 136:
  ret_irq = IRQ_SPORT1_TX;
 case 142:
  ret_irq = IRQ_SPI0;
  break;
 case 141:
  ret_irq = IRQ_SPI1;
  break;
 case 131:
  ret_irq = IRQ_UART0_RX;
  break;
 case 130:
  ret_irq = IRQ_UART0_TX;
  break;
 case 129:
  ret_irq = IRQ_UART1_RX;
  break;
 case 128:
  ret_irq = IRQ_UART1_TX;
  break;
 case 157:
  ret_irq = IRQ_EPPI0;
  break;
 case 156:
  ret_irq = IRQ_EPPI1;
  break;
 case 155:
  ret_irq = IRQ_EPPI2;
  break;
 case 146:
  ret_irq = IRQ_PIXC_IN0;
  break;
 case 144:
  ret_irq = IRQ_PIXC_IN1;
  break;
 case 145:
  ret_irq = IRQ_PIXC_OUT;
  break;
 case 135:
  ret_irq = IRQ_SPORT2_RX;
  break;
 case 134:
  ret_irq = IRQ_SPORT2_TX;
  break;
 case 133:
  ret_irq = IRQ_SPORT3_RX;
  break;
 case 132:
  ret_irq = IRQ_SPORT3_TX;
  break;
 case 143:
  ret_irq = IRQ_SDH;
  break;
 case 140:
  ret_irq = IRQ_SPI2;
  break;
 case 153:
 case 154:
  ret_irq = IRQ_MDMAS0;
  break;
 case 151:
 case 152:
  ret_irq = IRQ_MDMAS1;
  break;
 case 149:
 case 150:
  ret_irq = IRQ_MDMAS2;
  break;
 case 147:
 case 148:
  ret_irq = IRQ_MDMAS3;
  break;
 }
 return ret_irq;
}
