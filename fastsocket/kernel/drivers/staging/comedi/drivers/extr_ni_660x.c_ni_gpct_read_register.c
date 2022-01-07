
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {int chip_index; TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
typedef enum NI_660x_Register { ____Placeholder_NI_660x_Register } NI_660x_Register ;
struct TYPE_2__ {struct comedi_device* dev; } ;


 int ni_660x_read_register (struct comedi_device*,int ,int) ;
 int ni_gpct_to_660x_register (int) ;

__attribute__((used)) static unsigned ni_gpct_read_register(struct ni_gpct *counter,
          enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;
 enum NI_660x_Register ni_660x_register = ni_gpct_to_660x_register(reg);
 return ni_660x_read_register(dev, counter->chip_index,
         ni_660x_register);
}
