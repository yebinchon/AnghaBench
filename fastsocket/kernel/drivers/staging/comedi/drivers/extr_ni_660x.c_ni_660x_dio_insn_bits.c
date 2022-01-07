
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int DIO32Input ;
 int DIO32Output ;
 unsigned int ni_660x_read_register (struct comedi_device*,int ,int ) ;
 int ni_660x_write_register (struct comedi_device*,int ,unsigned int,int ) ;

__attribute__((used)) static int ni_660x_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 unsigned base_bitfield_channel = CR_CHAN(insn->chanspec);


 if (data[0]) {
  s->state &= ~(data[0] << base_bitfield_channel);
  s->state |= (data[0] & data[1]) << base_bitfield_channel;

  ni_660x_write_register(dev, 0, s->state, DIO32Output);
 }


 data[1] =
     (ni_660x_read_register(dev, 0,
       DIO32Input) >> base_bitfield_channel);
 return 2;
}
