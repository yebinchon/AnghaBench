
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int digital_state; } ;


 scalar_t__ ADQ12B_OUTBR ;
 TYPE_1__* devpriv ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int adq12b_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int channel;

 for (channel = 0; channel < 8; channel++)
  if (((data[0] >> channel) & 0x01) != 0)
   outb((((data[1] >> channel) & 0x01) << 3) | channel,
        dev->iobase + ADQ12B_OUTBR);


 if (data[0]) {
  devpriv->digital_state &= ~data[0];
  devpriv->digital_state |= (data[0] & data[1]);
 }

 data[1] = devpriv->digital_state;

 return 2;
}
