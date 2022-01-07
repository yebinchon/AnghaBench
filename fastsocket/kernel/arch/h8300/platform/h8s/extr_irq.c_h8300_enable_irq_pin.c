
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 unsigned int EXT_IRQ0 ;
 unsigned int EXT_IRQ15 ;
 int H8300_GPIO_DDR (unsigned int,unsigned int,int ) ;
 int H8300_GPIO_INPUT ;
 scalar_t__ H8300_GPIO_RESERVE (unsigned int,unsigned int) ;
 int IRQ_GPIO_MAP (unsigned short,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ ISR ;

int h8300_enable_irq_pin(unsigned int irq)
{
 if (irq >= EXT_IRQ0 && irq <= EXT_IRQ15) {
  unsigned short ptn = 1 << (irq - EXT_IRQ0);
  unsigned int port_no,bit_no;
  IRQ_GPIO_MAP(ptn, irq, port_no, bit_no);
  if (H8300_GPIO_RESERVE(port_no, bit_no) == 0)
   return -EBUSY;
  H8300_GPIO_DDR(port_no, bit_no, H8300_GPIO_INPUT);
  *(volatile unsigned short *)ISR &= ~ptn;
 }

 return 0;
}
