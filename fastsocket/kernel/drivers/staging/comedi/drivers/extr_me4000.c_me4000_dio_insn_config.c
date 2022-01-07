
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {int ctrl_reg; int dir_reg; } ;
struct TYPE_4__ {TYPE_1__ dio_context; } ;


 int CALL_PDEBUG (char*) ;
 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;
 int ENODEV ;
 unsigned int INSN_CONFIG_DIO_QUERY ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_0 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_1 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_2 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_3 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_4 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_5 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_6 ;
 unsigned long ME4000_DIO_CTRL_BIT_MODE_7 ;
 TYPE_2__* info ;
 unsigned long me4000_inl (struct comedi_device*,int ) ;
 int me4000_outl (struct comedi_device*,unsigned long,int ) ;

__attribute__((used)) static int me4000_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 unsigned long tmp;
 int chan = CR_CHAN(insn->chanspec);

 CALL_PDEBUG("In me4000_dio_insn_config()\n");

 if (data[0] == INSN_CONFIG_DIO_QUERY) {
  data[1] =
      (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
 }
 tmp = me4000_inl(dev, info->dio_context.ctrl_reg);

 if (data[0] == COMEDI_OUTPUT) {
  if (chan < 8) {
   s->io_bits |= 0xFF;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_0 |
     ME4000_DIO_CTRL_BIT_MODE_1);
   tmp |= ME4000_DIO_CTRL_BIT_MODE_0;
  } else if (chan < 16) {




   if (!me4000_inl(dev, info->dio_context.dir_reg))
    return -ENODEV;

   s->io_bits |= 0xFF00;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_2 |
     ME4000_DIO_CTRL_BIT_MODE_3);
   tmp |= ME4000_DIO_CTRL_BIT_MODE_2;
  } else if (chan < 24) {
   s->io_bits |= 0xFF0000;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_4 |
     ME4000_DIO_CTRL_BIT_MODE_5);
   tmp |= ME4000_DIO_CTRL_BIT_MODE_4;
  } else if (chan < 32) {
   s->io_bits |= 0xFF000000;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_6 |
     ME4000_DIO_CTRL_BIT_MODE_7);
   tmp |= ME4000_DIO_CTRL_BIT_MODE_6;
  } else {
   return -EINVAL;
  }
 } else {
  if (chan < 8) {




   if (!me4000_inl(dev, info->dio_context.dir_reg))
    return -ENODEV;

   s->io_bits &= ~0xFF;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_0 |
     ME4000_DIO_CTRL_BIT_MODE_1);
  } else if (chan < 16) {
   s->io_bits &= ~0xFF00;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_2 |
     ME4000_DIO_CTRL_BIT_MODE_3);
  } else if (chan < 24) {
   s->io_bits &= ~0xFF0000;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_4 |
     ME4000_DIO_CTRL_BIT_MODE_5);
  } else if (chan < 32) {
   s->io_bits &= ~0xFF000000;
   tmp &= ~(ME4000_DIO_CTRL_BIT_MODE_6 |
     ME4000_DIO_CTRL_BIT_MODE_7);
  } else {
   return -EINVAL;
  }
 }

 me4000_outl(dev, tmp, info->dio_context.ctrl_reg);

 return 1;
}
