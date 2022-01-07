
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int divisor2; int divisor1; } ;


 scalar_t__ DAS16M1_8254_SECOND ;
 int DAS16M1_XTAL ;
 int TRIG_ROUND_MASK ;
 TYPE_1__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,unsigned int*,int) ;
 int i8254_load (scalar_t__,int ,int,int ,int) ;

__attribute__((used)) static unsigned int das16m1_set_pacer(struct comedi_device *dev,
          unsigned int ns, int rounding_flags)
{
 i8253_cascade_ns_to_timer_2div(DAS16M1_XTAL, &(devpriv->divisor1),
           &(devpriv->divisor2), &ns,
           rounding_flags & TRIG_ROUND_MASK);


 i8254_load(dev->iobase + DAS16M1_8254_SECOND, 0, 1, devpriv->divisor1,
     2);
 i8254_load(dev->iobase + DAS16M1_8254_SECOND, 0, 2, devpriv->divisor2,
     2);

 return ns;
}
