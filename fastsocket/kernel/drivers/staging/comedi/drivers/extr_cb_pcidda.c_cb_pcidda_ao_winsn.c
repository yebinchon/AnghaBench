
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_range; scalar_t__ dac; } ;


 unsigned int BIP ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DACONTROL ;
 scalar_t__ DADATA ;
 unsigned int ENABLEDAC ;
 unsigned int NOSU ;
 unsigned int RANGE10V ;
 unsigned int RANGE2V5 ;
 unsigned int RANGE5V ;
 unsigned int UNIP ;
 int cb_pcidda_calibrate (struct comedi_device*,unsigned int,unsigned int) ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcidda_ao_winsn(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 unsigned int command;
 unsigned int channel, range;

 channel = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);


 if (range != devpriv->ao_range[channel])
  cb_pcidda_calibrate(dev, channel, range);


 command = NOSU | ENABLEDAC;


 switch (range) {
 case 0:
  command |= BIP | RANGE10V;
  break;
 case 1:
  command |= BIP | RANGE5V;
  break;
 case 2:
  command |= BIP | RANGE2V5;
  break;
 case 3:
  command |= UNIP | RANGE10V;
  break;
 case 4:
  command |= UNIP | RANGE5V;
  break;
 case 5:
  command |= UNIP | RANGE2V5;
  break;
 };


 command |= channel << 2;
 outw(command, devpriv->dac + DACONTROL);


 outw(data[0], devpriv->dac + DADATA + channel * 2);


 return 1;
}
