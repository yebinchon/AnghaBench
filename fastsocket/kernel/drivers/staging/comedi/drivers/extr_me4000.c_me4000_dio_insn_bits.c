
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {unsigned int io_bits; unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int minor; } ;
struct TYPE_3__ {int port_3_reg; int port_2_reg; int port_1_reg; int port_0_reg; } ;
struct TYPE_4__ {TYPE_1__ dio_context; } ;


 int CALL_PDEBUG (char*) ;
 int EINVAL ;
 int EIO ;
 TYPE_2__* info ;
 int me4000_inl (struct comedi_device*,int ) ;
 int me4000_outl (struct comedi_device*,int,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static int me4000_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{

 CALL_PDEBUG("In me4000_dio_insn_bits()\n");


 if (insn->n == 0)
  return 0;

 if (insn->n != 2) {
  printk
      ("comedi%d: me4000: me4000_dio_insn_bits(): Invalid instruction length\n",
       dev->minor);
  return -EINVAL;
 }







 if (data[0]) {

  if ((s->io_bits & data[0]) != data[0])
   return -EIO;

  s->state &= ~data[0];
  s->state |= data[0] & data[1];


  me4000_outl(dev, (s->state >> 0) & 0xFF,
       info->dio_context.port_0_reg);
  me4000_outl(dev, (s->state >> 8) & 0xFF,
       info->dio_context.port_1_reg);
  me4000_outl(dev, (s->state >> 16) & 0xFF,
       info->dio_context.port_2_reg);
  me4000_outl(dev, (s->state >> 24) & 0xFF,
       info->dio_context.port_3_reg);
 }



 data[1] =
     ((me4000_inl(dev, info->dio_context.port_0_reg) & 0xFF) << 0) |
     ((me4000_inl(dev, info->dio_context.port_1_reg) & 0xFF) << 8) |
     ((me4000_inl(dev, info->dio_context.port_2_reg) & 0xFF) << 16) |
     ((me4000_inl(dev, info->dio_context.port_3_reg) & 0xFF) << 24);

 return 2;
}
