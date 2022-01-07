
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MAC_RX ;
 int IRQ_MAC_TX ;
 int IRQ_MEM_DMA0 ;
 int IRQ_MEM_DMA1 ;
 int IRQ_PPI ;
 int IRQ_SPI0 ;
 int IRQ_SPORT0_RX ;
 int IRQ_SPORT0_TX ;
 int IRQ_SPORT1_RX ;
 int IRQ_SPORT1_TX ;
 int IRQ_UART0_RX ;
 int IRQ_UART0_TX ;
 int IRQ_UART1_RX ;
 int IRQ_UART1_TX ;

int channel2irq(unsigned int channel)
{
 int ret_irq = -1;

 switch (channel) {
 case 137:
  ret_irq = IRQ_PPI;
  break;

 case 143:
  ret_irq = IRQ_MAC_RX;
  break;

 case 142:
  ret_irq = IRQ_MAC_TX;
  break;

 case 129:
  ret_irq = IRQ_UART1_RX;
  break;

 case 128:
  ret_irq = IRQ_UART1_TX;
  break;

 case 135:
  ret_irq = IRQ_SPORT0_RX;
  break;

 case 134:
  ret_irq = IRQ_SPORT0_TX;
  break;

 case 133:
  ret_irq = IRQ_SPORT1_RX;
  break;

 case 132:
  ret_irq = IRQ_SPORT1_TX;
  break;

 case 136:
  ret_irq = IRQ_SPI0;
  break;

 case 131:
  ret_irq = IRQ_UART0_RX;
  break;

 case 130:
  ret_irq = IRQ_UART0_TX;
  break;

 case 140:
 case 141:
  ret_irq = IRQ_MEM_DMA0;
  break;

 case 138:
 case 139:
  ret_irq = IRQ_MEM_DMA1;
  break;
 }
 return ret_irq;
}
