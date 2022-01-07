
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {TYPE_1__* counter_dev; } ;
struct TYPE_5__ {scalar_t__ events; } ;
struct TYPE_4__ {int * counters; } ;


 int NI_GPCT_SUBDEV (unsigned short) ;
 TYPE_3__* devpriv ;
 int ni_event (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_tio_handle_interrupt (int *,struct comedi_subdevice*) ;

__attribute__((used)) static void handle_gpct_interrupt(struct comedi_device *dev,
      unsigned short counter_index)
{
}
