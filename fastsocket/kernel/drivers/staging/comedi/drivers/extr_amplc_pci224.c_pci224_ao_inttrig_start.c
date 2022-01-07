
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int inttrig; } ;


 int EINVAL ;
 int NULLFUNC ;
 int pci224_ao_start (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int
pci224_ao_inttrig_start(struct comedi_device *dev, struct comedi_subdevice *s,
   unsigned int trignum)
{
 if (trignum != 0)
  return -EINVAL;

 s->async->inttrig = NULLFUNC;
 pci224_ao_start(dev, s);

 return 1;
}
