
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 short fake_flatline (struct comedi_device*,unsigned int,unsigned long) ;
 short fake_sawtooth (struct comedi_device*,unsigned int,unsigned long) ;
 short fake_squarewave (struct comedi_device*,unsigned int,unsigned long) ;

__attribute__((used)) static short fake_waveform(struct comedi_device *dev, unsigned int channel,
      unsigned int range, unsigned long current_time)
{
 enum {
  SAWTOOTH_CHAN,
  SQUARE_CHAN,
 };
 switch (channel) {
 case SAWTOOTH_CHAN:
  return fake_sawtooth(dev, range, current_time);
  break;
 case SQUARE_CHAN:
  return fake_squarewave(dev, range, current_time);
  break;
 default:
  break;
 }

 return fake_flatline(dev, range, current_time);
}
