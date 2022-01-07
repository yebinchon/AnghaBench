
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* mite; int OpModeBits; } ;
struct TYPE_5__ {int * inttrig; } ;
struct TYPE_4__ {scalar_t__ daq_io_addr; } ;


 int EINVAL ;
 scalar_t__ OpMode ;
 TYPE_3__* devpriv ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_inttrig(struct comedi_device *dev,
        struct comedi_subdevice *s, unsigned int trignum)
{
 if (trignum != 0)
  return -EINVAL;

 writeb(devpriv->OpModeBits, devpriv->mite->daq_io_addr + OpMode);
 s->async->inttrig = ((void*)0);

 return 1;
}
