
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct comedi_subdevice {int maxdata; TYPE_1__* range_table; } ;
struct comedi_krange {scalar_t__ min; scalar_t__ max; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; } ;
struct TYPE_4__ {unsigned long usec_period; int uvolt_amplitude; } ;
struct TYPE_3__ {struct comedi_krange* range; } ;


 TYPE_2__* devpriv ;
 int do_div (int,scalar_t__) ;

__attribute__((used)) static short fake_squarewave(struct comedi_device *dev,
        unsigned int range_index,
        unsigned long current_time)
{
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int offset = s->maxdata / 2;
 u64 value;
 const struct comedi_krange *krange =
     &s->range_table->range[range_index];
 current_time %= devpriv->usec_period;

 value = s->maxdata;
 value *= devpriv->uvolt_amplitude;
 do_div(value, krange->max - krange->min);

 if (current_time < devpriv->usec_period / 2)
  value *= -1;

 return offset + value;
}
