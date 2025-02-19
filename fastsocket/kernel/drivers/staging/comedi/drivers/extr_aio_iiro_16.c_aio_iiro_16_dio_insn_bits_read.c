
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AIO_IIRO_16_INPUT_0_7 ;
 scalar_t__ AIO_IIRO_16_INPUT_8_15 ;
 int EINVAL ;
 int inb (scalar_t__) ;

__attribute__((used)) static int aio_iiro_16_dio_insn_bits_read(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 data[1] = 0;
 data[1] |= inb(dev->iobase + AIO_IIRO_16_INPUT_0_7);
 data[1] |= inb(dev->iobase + AIO_IIRO_16_INPUT_8_15) << 8;

 return 2;
}
