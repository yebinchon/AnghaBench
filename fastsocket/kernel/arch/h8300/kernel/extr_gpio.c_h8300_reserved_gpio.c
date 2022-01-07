
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char used; } ;


 int MAX_PORT ;
 TYPE_1__* gpio_regs ;

int h8300_reserved_gpio(int port, unsigned int bits)
{
 unsigned char *used;

 if (port < 0 || port >= MAX_PORT)
  return -1;
 used = &(gpio_regs[port].used);
 if ((*used & bits) != 0)
  return 0;
 *used |= bits;
 return 1;
}
