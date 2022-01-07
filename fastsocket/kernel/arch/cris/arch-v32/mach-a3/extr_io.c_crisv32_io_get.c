
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crisv32_iopin {int bit; TYPE_1__* port; } ;
struct TYPE_2__ {unsigned int pin_count; } ;


 int EINVAL ;
 int EIO ;
 unsigned int NBR_OF_PORTS ;
 TYPE_1__* crisv32_ioports ;
 scalar_t__ crisv32_pinmux_alloc (unsigned int,unsigned int,unsigned int,int ) ;
 int pinmux_gpio ;

int crisv32_io_get(struct crisv32_iopin *iopin,
 unsigned int port, unsigned int pin)
{
 if (port > NBR_OF_PORTS)
  return -EINVAL;
 if (port > crisv32_ioports[port].pin_count)
  return -EINVAL;

 iopin->bit = 1 << pin;
 iopin->port = &crisv32_ioports[port];

 if (crisv32_pinmux_alloc(port, pin, pin, pinmux_gpio))
  return -EIO;

 return 0;
}
