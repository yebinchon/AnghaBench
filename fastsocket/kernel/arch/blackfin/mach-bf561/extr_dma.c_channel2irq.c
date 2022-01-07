
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_IMEM_DMA0 ;
 int IRQ_IMEM_DMA1 ;
 int IRQ_MEM_DMA0 ;
 int IRQ_MEM_DMA1 ;
 int IRQ_MEM_DMA2 ;
 int IRQ_MEM_DMA3 ;
 int IRQ_PPI0 ;
 int IRQ_PPI1 ;
 int IRQ_SPI ;
 int IRQ_SPORT0_RX ;
 int IRQ_SPORT0_TX ;
 int IRQ_SPORT1_RX ;
 int IRQ_SPORT1_TX ;
 int IRQ_UART_RX ;
 int IRQ_UART_TX ;

int channel2irq(unsigned int channel)
{
 int ret_irq = -1;

 switch (channel) {
 case 136:
  ret_irq = IRQ_PPI0;
  break;
 case 135:
  ret_irq = IRQ_PPI1;
  break;
 case 133:
  ret_irq = IRQ_SPORT0_RX;
  break;
 case 132:
  ret_irq = IRQ_SPORT0_TX;
  break;
 case 131:
  ret_irq = IRQ_SPORT1_RX;
  break;
 case 130:
  ret_irq = IRQ_SPORT1_TX;
  break;
 case 134:
  ret_irq = IRQ_SPI;
  break;
 case 129:
  ret_irq = IRQ_UART_RX;
  break;
 case 128:
  ret_irq = IRQ_UART_TX;
  break;

 case 143:
 case 144:
  ret_irq = IRQ_MEM_DMA0;
  break;
 case 141:
 case 142:
  ret_irq = IRQ_MEM_DMA1;
  break;
 case 139:
 case 140:
  ret_irq = IRQ_MEM_DMA2;
  break;
 case 137:
 case 138:
  ret_irq = IRQ_MEM_DMA3;
  break;

 case 147:
 case 148:
  ret_irq = IRQ_IMEM_DMA0;
  break;
 case 145:
 case 146:
  ret_irq = IRQ_IMEM_DMA1;
  break;
 }
 return ret_irq;
}
