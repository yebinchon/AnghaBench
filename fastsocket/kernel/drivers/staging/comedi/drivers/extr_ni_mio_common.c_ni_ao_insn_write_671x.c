
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int aobits; } ;
struct TYPE_3__ {unsigned int* ao; } ;


 int AO_Immediate_671x ;
 unsigned int CR_CHAN (int ) ;
 int DACx_Direct_Data_671x (unsigned int) ;
 int ao_win_out (unsigned int,int ) ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,int *,int,int ) ;

__attribute__((used)) static int ni_ao_insn_write_671x(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int invert;

 ao_win_out(1 << chan, AO_Immediate_671x);
 invert = 1 << (boardtype.aobits - 1);

 ni_ao_config_chanlist(dev, s, &insn->chanspec, 1, 0);

 devpriv->ao[chan] = data[0];
 ao_win_out(data[0] ^ invert, DACx_Direct_Data_671x(chan));

 return 1;
}
