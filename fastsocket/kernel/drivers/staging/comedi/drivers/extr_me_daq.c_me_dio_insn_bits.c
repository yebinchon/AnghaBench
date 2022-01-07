
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; unsigned int io_bits; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ me_regbase; } ;


 scalar_t__ ME_DIO_PORT_A ;
 scalar_t__ ME_DIO_PORT_B ;
 TYPE_1__* dev_private ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int me_dio_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned int mask = data[0];
 s->state &= ~mask;
 s->state |= (mask & data[1]);

 mask &= s->io_bits;
 if (mask & 0x0000ffff) {
  writew((s->state & 0xffff),
         dev_private->me_regbase + ME_DIO_PORT_A);
 } else {
  data[1] &= ~0x0000ffff;
  data[1] |= readw(dev_private->me_regbase + ME_DIO_PORT_A);
 }

 if (mask & 0xffff0000) {
  writew(((s->state >> 16) & 0xffff),
         dev_private->me_regbase + ME_DIO_PORT_B);
 } else {
  data[1] &= ~0xffff0000;
  data[1] |= readw(dev_private->me_regbase + ME_DIO_PORT_B) << 16;
 }

 return 2;
}
