
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int control_2; int dac_control; unsigned int* ao_readback; scalar_t__ me_regbase; } ;


 unsigned int BUFFERED_DAC ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DAC_BIPOLAR_A ;
 int DAC_GAIN_0_A ;
 int DAC_GAIN_1_A ;
 unsigned int ENABLE_DAC ;
 scalar_t__ ME_CONTROL_2 ;
 scalar_t__ ME_DAC_CONTROL ;
 scalar_t__ ME_DAC_CONTROL_UPDATE ;
 scalar_t__ ME_DAC_DATA_A ;
 scalar_t__ ME_DAC_UPDATE ;
 TYPE_1__* dev_private ;
 int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int me_ao_insn_write(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan;
 int rang;
 int i;


 dev_private->control_2 |= ENABLE_DAC;
 writew(dev_private->control_2, dev_private->me_regbase + ME_CONTROL_2);


 dev_private->control_2 |= BUFFERED_DAC;
 writew(dev_private->control_2, dev_private->me_regbase + ME_CONTROL_2);


 for (i = 0; i < insn->n; i++) {
  chan = CR_CHAN((&insn->chanspec)[i]);
  rang = CR_RANGE((&insn->chanspec)[i]);


  dev_private->dac_control &= ~(0x0880 >> chan);
  if (rang == 0)
   dev_private->dac_control |=
       ((DAC_BIPOLAR_A | DAC_GAIN_1_A) >> chan);
  else if (rang == 1)
   dev_private->dac_control |=
       ((DAC_BIPOLAR_A | DAC_GAIN_0_A) >> chan);
 }
 writew(dev_private->dac_control,
        dev_private->me_regbase + ME_DAC_CONTROL);


 readw(dev_private->me_regbase + ME_DAC_CONTROL_UPDATE);


 for (i = 0; i < insn->n; i++) {
  chan = CR_CHAN((&insn->chanspec)[i]);
  writew((data[0] & s->maxdata),
         dev_private->me_regbase + ME_DAC_DATA_A + (chan << 1));
  dev_private->ao_readback[chan] = (data[0] & s->maxdata);
 }


 readw(dev_private->me_regbase + ME_DAC_UPDATE);

 return i;
}
