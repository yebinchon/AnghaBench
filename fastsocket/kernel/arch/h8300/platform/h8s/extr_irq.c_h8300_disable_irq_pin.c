
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EXT_IRQ0 ;
 unsigned int EXT_IRQ15 ;
 int H8300_GPIO_FREE (unsigned short,unsigned short) ;
 scalar_t__ IER ;
 int IRQ_GPIO_MAP (unsigned short,unsigned int,unsigned short,unsigned short) ;
 scalar_t__ ISR ;

void h8300_disable_irq_pin(unsigned int irq)
{
 if (irq >= EXT_IRQ0 && irq <= EXT_IRQ15) {

  unsigned short ptn = 1 << (irq - EXT_IRQ0);
  unsigned short port_no,bit_no;
  *(volatile unsigned short *)ISR &= ~ptn;
  *(volatile unsigned short *)IER &= ~ptn;
  IRQ_GPIO_MAP(ptn, irq, port_no, bit_no);
  H8300_GPIO_FREE(port_no, bit_no);
 }
}
