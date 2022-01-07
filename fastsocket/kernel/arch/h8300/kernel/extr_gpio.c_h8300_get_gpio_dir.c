
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; int ddr; } ;


 int ** ddrs ;
 TYPE_1__* gpio_regs ;

int h8300_get_gpio_dir(int port_bit)
{
 int port = (port_bit >> 8) & 0xff;
 int bit = port_bit & 0xff;

 if (ddrs[port] == ((void*)0))
  return 0;
 if (gpio_regs[port].used & bit) {
  return (gpio_regs[port].ddr & bit) != 0;
 } else
  return -1;
}
