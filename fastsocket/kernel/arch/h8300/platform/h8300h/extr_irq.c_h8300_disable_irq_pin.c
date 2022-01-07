
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H8300_GPIO_FREE (int ,int) ;
 int H8300_GPIO_P8 ;
 int H8300_GPIO_P9 ;
 scalar_t__ IER ;

void h8300_disable_irq_pin(unsigned int irq)
{
 int bitmask;
 if (irq < 133 || irq > 128)
  return;


 bitmask = 1 << (irq - 133);
 switch(irq) {
 case 133:
 case 132:
 case 131:
 case 130:
  *(volatile unsigned char *)IER &= ~bitmask;
  H8300_GPIO_FREE(H8300_GPIO_P8, bitmask);
  break ;
 case 129:
 case 128:
  *(volatile unsigned char *)IER &= ~bitmask;
  H8300_GPIO_FREE(H8300_GPIO_P9, bitmask);
  break;
 }
}
