
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {int dummy; } ;


 int AO_Calibration_Channel_Select_67xx ;
 int CR_ALT_SOURCE ;
 unsigned int CR_CHAN (int) ;
 int cs5529_do_conversion (struct comedi_device*,unsigned short*) ;
 int ni_ao_win_outw (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int cs5529_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n, retval;
 unsigned short sample;
 unsigned int channel_select;
 const unsigned int INTERNAL_REF = 0x1000;




 if (insn->chanspec & CR_ALT_SOURCE)
  channel_select = INTERNAL_REF;
 else
  channel_select = CR_CHAN(insn->chanspec);
 ni_ao_win_outw(dev, channel_select, AO_Calibration_Channel_Select_67xx);

 for (n = 0; n < insn->n; n++) {
  retval = cs5529_do_conversion(dev, &sample);
  if (retval < 0)
   return retval;
  data[n] = sample;
 }
 return insn->n;
}
