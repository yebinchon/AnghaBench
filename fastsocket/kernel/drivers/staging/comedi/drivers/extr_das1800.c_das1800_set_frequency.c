
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int divisor2; int divisor1; } ;


 scalar_t__ DAS1800_COUNTER ;
 TYPE_1__* devpriv ;
 scalar_t__ i8254_load (scalar_t__,int ,int,int ,int) ;

__attribute__((used)) static int das1800_set_frequency(struct comedi_device *dev)
{
 int err = 0;


 if (i8254_load(dev->iobase + DAS1800_COUNTER, 0, 1, devpriv->divisor1,
         2))
  err++;

 if (i8254_load(dev->iobase + DAS1800_COUNTER, 0, 2, devpriv->divisor2,
         2))
  err++;
 if (err)
  return -1;

 return 0;
}
