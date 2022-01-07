
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int do_mux_bits; } ;


 scalar_t__ DAS08_CONTROL ;
 int DAS08_DO_MASK ;
 int DAS08_OP (int) ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int das08_do_wbits(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int wbits;


 wbits = (devpriv->do_mux_bits >> 4) & 0xf;

 wbits &= ~data[0];

 wbits |= data[0] & data[1];

 spin_lock(&dev->spinlock);
 devpriv->do_mux_bits &= ~DAS08_DO_MASK;
 devpriv->do_mux_bits |= DAS08_OP(wbits);
 outb(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL);
 spin_unlock(&dev->spinlock);

 data[1] = wbits;

 return 2;
}
