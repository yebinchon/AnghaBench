
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int * chanlist; } ;
struct comedi_async {TYPE_1__ cmd; } ;
struct TYPE_6__ {int* hwrange; } ;
struct TYPE_5__ {int ao_bits; } ;


 size_t CR_RANGE (int ) ;
 int PCI224_DACCON_POLAR_MASK ;
 int PCI224_DACCON_POLAR_UNI ;
 TYPE_3__* devpriv ;
 TYPE_2__* thisboard ;

__attribute__((used)) static void
pci224_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
  void *data, unsigned int num_bytes, unsigned int chan_index)
{
 struct comedi_async *async = s->async;
 short *array = data;
 unsigned int length = num_bytes / sizeof(*array);
 unsigned int offset;
 unsigned int shift;
 unsigned int i;


 shift = 16 - thisboard->ao_bits;

 if ((devpriv->hwrange[CR_RANGE(async->cmd.chanlist[0])] &
      PCI224_DACCON_POLAR_MASK) == PCI224_DACCON_POLAR_UNI) {

  offset = 0;
 } else {

  offset = 32768;
 }

 for (i = 0; i < length; i++) {
  array[i] = (array[i] << shift) - offset;
 }
}
