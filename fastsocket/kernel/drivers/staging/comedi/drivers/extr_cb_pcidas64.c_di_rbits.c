
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dio_counter_iobase; } ;


 scalar_t__ DI_REG ;
 TYPE_1__* priv (struct comedi_device*) ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static int di_rbits(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bits;

 bits = readb(priv(dev)->dio_counter_iobase + DI_REG);
 bits &= 0xf;
 data[1] = bits;
 data[0] = 0;

 return 2;
}
