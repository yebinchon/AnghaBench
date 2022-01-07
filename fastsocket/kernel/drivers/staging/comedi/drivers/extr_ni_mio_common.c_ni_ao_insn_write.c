
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; } ;
struct TYPE_3__ {unsigned int* ao; } ;


 unsigned int CR_CHAN (int ) ;
 int DAC0_Direct_Data ;
 int DAC1_Direct_Data ;
 int M_Offset_DAC_Direct_Data (unsigned int) ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 unsigned int ni_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,int *,int,int ) ;
 int ni_reg_m_series_mask ;
 int ni_writew (unsigned int,int ) ;

__attribute__((used)) static int ni_ao_insn_write(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int invert;

 invert = ni_ao_config_chanlist(dev, s, &insn->chanspec, 1, 0);

 devpriv->ao[chan] = data[0];

 if (boardtype.reg_type & ni_reg_m_series_mask) {
  ni_writew(data[0], M_Offset_DAC_Direct_Data(chan));
 } else
  ni_writew(data[0] ^ invert,
     (chan) ? DAC1_Direct_Data : DAC0_Direct_Data);

 return 1;
}
