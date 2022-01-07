
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DAC_SELECT_REG ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void set_dac_select_reg(struct comedi_device *dev,
          const struct comedi_cmd *cmd)
{
 uint16_t bits;
 unsigned int first_channel, last_channel;

 first_channel = CR_CHAN(cmd->chanlist[0]);
 last_channel = CR_CHAN(cmd->chanlist[cmd->chanlist_len - 1]);
 if (last_channel < first_channel)
  comedi_error(dev, "bug! last ao channel < first ao channel");

 bits = (first_channel & 0x7) | (last_channel & 0x7) << 3;

 writew(bits, priv(dev)->main_iobase + DAC_SELECT_REG);
}
