
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int aobits; scalar_t__ ao_unipolar; } ;
struct TYPE_3__ {unsigned int* ao_conf; } ;


 unsigned int AO_Bipolar ;
 unsigned int AO_Channel (unsigned int) ;
 int AO_Configuration ;
 unsigned int AO_Deglitch ;
 unsigned int AO_Ext_Ref ;
 unsigned int AO_Ground_Ref ;
 scalar_t__ AREF_OTHER ;
 scalar_t__ CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_DEGLITCH ;
 unsigned int CR_RANGE (unsigned int) ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_writew (unsigned int,int ) ;

__attribute__((used)) static int ni_old_ao_config_chanlist(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int chanspec[],
         unsigned int n_chans)
{
 unsigned int range;
 unsigned int chan;
 unsigned int conf;
 int i;
 int invert = 0;

 for (i = 0; i < n_chans; i++) {
  chan = CR_CHAN(chanspec[i]);
  range = CR_RANGE(chanspec[i]);
  conf = AO_Channel(chan);

  if (boardtype.ao_unipolar) {
   if ((range & 1) == 0) {
    conf |= AO_Bipolar;
    invert = (1 << (boardtype.aobits - 1));
   } else {
    invert = 0;
   }
   if (range & 2)
    conf |= AO_Ext_Ref;
  } else {
   conf |= AO_Bipolar;
   invert = (1 << (boardtype.aobits - 1));
  }


  if (chanspec[i] & CR_DEGLITCH)
   conf |= AO_Deglitch;



  conf |= (CR_AREF(chanspec[i]) ==
    AREF_OTHER) ? AO_Ground_Ref : 0;

  ni_writew(conf, AO_Configuration);
  devpriv->ao_conf[chan] = conf;
 }
 return invert;
}
