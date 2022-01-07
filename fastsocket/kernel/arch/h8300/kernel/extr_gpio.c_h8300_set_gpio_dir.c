
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; int ddr; } ;


 int** ddrs ;
 TYPE_1__* gpio_regs ;

int h8300_set_gpio_dir(int port_bit,int dir)
{
 int port = (port_bit >> 8) & 0xff;
 int bit = port_bit & 0xff;

 if (ddrs[port] == ((void*)0))
  return 0;
 if (gpio_regs[port].used & bit) {
  if (dir)
   gpio_regs[port].ddr |= bit;
  else
   gpio_regs[port].ddr &= ~bit;
  *ddrs[port] = gpio_regs[port].ddr;
  return 1;
 } else
  return 0;
}
