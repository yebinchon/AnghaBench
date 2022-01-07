
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int GPIO_PB15 ;
 unsigned int GPIO_PC14 ;
 unsigned int GPIO_PC15 ;
 unsigned int GPIO_PH14 ;
 unsigned int GPIO_PH15 ;
 unsigned int GPIO_PJ14 ;
 unsigned int GPIO_PJ15 ;
 unsigned int MAX_BLACKFIN_GPIOS ;

inline int check_gpio(unsigned gpio)
{






 if (gpio >= MAX_BLACKFIN_GPIOS)
  return -EINVAL;
 return 0;
}
