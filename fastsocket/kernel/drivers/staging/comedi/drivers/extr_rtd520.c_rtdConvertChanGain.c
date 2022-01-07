
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int chanBipolar; } ;
struct TYPE_3__ {unsigned int range10Start; unsigned int rangeUniStart; } ;






 int CHAN_ARRAY_CLEAR (int ,int) ;
 int CHAN_ARRAY_SET (int ,int) ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 TYPE_2__* devpriv ;
 TYPE_1__* thisboard ;

__attribute__((used)) static unsigned short rtdConvertChanGain(struct comedi_device *dev,
      unsigned int comediChan, int chanIndex)
{
 unsigned int chan, range, aref;
 unsigned short r = 0;

 chan = CR_CHAN(comediChan);
 range = CR_RANGE(comediChan);
 aref = CR_AREF(comediChan);

 r |= chan & 0xf;


 if (range < thisboard->range10Start) {
  r |= 0x000;
  r |= (range & 0x7) << 4;
  CHAN_ARRAY_SET(devpriv->chanBipolar, chanIndex);
 } else if (range < thisboard->rangeUniStart) {
  r |= 0x100;
  r |= ((range - thisboard->range10Start) & 0x7) << 4;
  CHAN_ARRAY_SET(devpriv->chanBipolar, chanIndex);
 } else {
  r |= 0x200;
  r |= ((range - thisboard->rangeUniStart) & 0x7) << 4;
  CHAN_ARRAY_CLEAR(devpriv->chanBipolar, chanIndex);
 }

 switch (aref) {
 case 129:
  break;

 case 131:
  r |= 0x80;
  break;

 case 130:
  r |= 0x400;
  break;

 case 128:
  break;
 }


 return r;
}
