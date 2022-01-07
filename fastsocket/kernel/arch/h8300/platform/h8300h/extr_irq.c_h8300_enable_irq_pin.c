
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;






 int H8300_GPIO_DDR (int ,int,int ) ;
 int H8300_GPIO_INPUT ;
 int H8300_GPIO_P8 ;
 int H8300_GPIO_P9 ;
 int H8300_GPIO_RESERVE (int ,int) ;

int h8300_enable_irq_pin(unsigned int irq)
{
 int bitmask;
 if (irq < 133 || irq > 128)
  return 0;


 bitmask = 1 << (irq - 133);
 switch(irq) {
 case 133:
 case 132:
 case 131:
 case 130:
  if (H8300_GPIO_RESERVE(H8300_GPIO_P8, bitmask) == 0)
   return -EBUSY;
  H8300_GPIO_DDR(H8300_GPIO_P8, bitmask, H8300_GPIO_INPUT);
  break;
 case 129:
 case 128:
  if (H8300_GPIO_RESERVE(H8300_GPIO_P9, bitmask) == 0)
   return -EBUSY;
  H8300_GPIO_DDR(H8300_GPIO_P9, bitmask, H8300_GPIO_INPUT);
  break;
 }

 return 0;
}
