
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {scalar_t__ main_iobase; int dac_control1_bits; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAC_CONTROL1_REG ;
 int DAC_SW_GATE_BIT ;
 TYPE_1__* priv (struct comedi_device*) ;
 int set_dac_range_bits (struct comedi_device*,int *,int,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void set_dac_control1_reg(struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{
 int i;

 for (i = 0; i < cmd->chanlist_len; i++) {
  int channel, range;

  channel = CR_CHAN(cmd->chanlist[i]);
  range = CR_RANGE(cmd->chanlist[i]);
  set_dac_range_bits(dev, &priv(dev)->dac_control1_bits, channel,
       range);
 }
 priv(dev)->dac_control1_bits |= DAC_SW_GATE_BIT;
 writew(priv(dev)->dac_control1_bits,
        priv(dev)->main_iobase + DAC_CONTROL1_REG);
}
