
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MEM0_DMA0 ;
 int IRQ_MEM0_DMA1 ;
 int IRQ_MEM1_DMA0 ;
 int IRQ_MEM1_DMA1 ;
 int IRQ_PPI ;
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
 int IRQ_UART2_RX ;
 int IRQ_UART2_TX ;

int channel2irq(unsigned int channel)
{
 int ret_irq = -1;

 switch (channel) {
 case 145:
  ret_irq = IRQ_PPI;
  break;

 case 133:
  ret_irq = IRQ_UART0_RX;
  break;

 case 132:
  ret_irq = IRQ_UART0_TX;
  break;

 case 131:
  ret_irq = IRQ_UART1_RX;
  break;

 case 130:
  ret_irq = IRQ_UART1_TX;
  break;

 case 129:
  ret_irq = IRQ_UART2_RX;
  break;

 case 128:
  ret_irq = IRQ_UART2_TX;
  break;

 case 141:
  ret_irq = IRQ_SPORT0_RX;
  break;

 case 140:
  ret_irq = IRQ_SPORT0_TX;
  break;

 case 139:
  ret_irq = IRQ_SPORT1_RX;
  break;

 case 138:
  ret_irq = IRQ_SPORT1_TX;
  break;

 case 137:
  ret_irq = IRQ_SPORT2_RX;
  break;

 case 136:
  ret_irq = IRQ_SPORT2_TX;
  break;

 case 135:
  ret_irq = IRQ_SPORT3_RX;
  break;

 case 134:
  ret_irq = IRQ_SPORT3_TX;
  break;

 case 144:
  ret_irq = IRQ_SPI0;
  break;

 case 143:
  ret_irq = IRQ_SPI1;
  break;

 case 142:
  ret_irq = IRQ_SPI2;
  break;

 case 152:
 case 153:
  ret_irq = IRQ_MEM0_DMA0;
  break;
 case 150:
 case 151:
  ret_irq = IRQ_MEM0_DMA1;
  break;
 case 148:
 case 149:
  ret_irq = IRQ_MEM1_DMA0;
  break;
 case 146:
 case 147:
  ret_irq = IRQ_MEM1_DMA1;
  break;
 }
 return ret_irq;
}
