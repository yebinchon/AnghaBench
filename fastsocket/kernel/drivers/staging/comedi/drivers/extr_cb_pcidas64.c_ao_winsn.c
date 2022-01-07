
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {unsigned int dac_control1_bits; unsigned int* ao_value; scalar_t__ main_iobase; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAC_CONTROL0_REG ;
 scalar_t__ DAC_CONTROL1_REG ;
 scalar_t__ LAYOUT_4020 ;
 TYPE_2__* board (struct comedi_device*) ;
 scalar_t__ dac_convert_reg (int) ;
 scalar_t__ dac_lsb_4020_reg (int) ;
 scalar_t__ dac_msb_4020_reg (int) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int set_dac_range_bits (struct comedi_device*,unsigned int*,int,int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);
 int range = CR_RANGE(insn->chanspec);


 writew(0, priv(dev)->main_iobase + DAC_CONTROL0_REG);


 set_dac_range_bits(dev, &priv(dev)->dac_control1_bits, chan, range);
 writew(priv(dev)->dac_control1_bits,
        priv(dev)->main_iobase + DAC_CONTROL1_REG);


 if (board(dev)->layout == LAYOUT_4020) {
  writew(data[0] & 0xff,
         priv(dev)->main_iobase + dac_lsb_4020_reg(chan));
  writew((data[0] >> 8) & 0xf,
         priv(dev)->main_iobase + dac_msb_4020_reg(chan));
 } else {
  writew(data[0], priv(dev)->main_iobase + dac_convert_reg(chan));
 }


 priv(dev)->ao_value[chan] = data[0];

 return 1;
}
