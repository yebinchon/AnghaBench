
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AIO_IIRO_16_RELAY_0_7 ;
 scalar_t__ AIO_IIRO_16_RELAY_8_15 ;
 int EINVAL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int aio_iiro_16_dio_insn_bits_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= data[0] & data[1];
  outb(s->state & 0xff, dev->iobase + AIO_IIRO_16_RELAY_0_7);
  outb((s->state >> 8) & 0xff,
       dev->iobase + AIO_IIRO_16_RELAY_8_15);
 }

 data[1] = s->state;

 return 2;
}
