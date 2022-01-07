
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int ClockConfigRegister ;
 int CounterSwap ;
 int ni_660x_write_register (struct comedi_device*,int,int ,int ) ;

__attribute__((used)) static void set_tio_counterswap(struct comedi_device *dev, int chipset)
{




 if (chipset)
  ni_660x_write_register(dev, chipset, CounterSwap,
           ClockConfigRegister);
 else
  ni_660x_write_register(dev, chipset, 0, ClockConfigRegister);
}
