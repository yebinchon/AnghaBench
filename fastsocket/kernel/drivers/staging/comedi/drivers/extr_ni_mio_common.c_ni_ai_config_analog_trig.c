
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int n_adchan; int has_analog_trig; } ;
struct TYPE_3__ {unsigned int atrig_low; unsigned int atrig_high; int atrig_mode; } ;


 unsigned int COMEDI_EV_SCAN_BEGIN ;
 int EAGAIN ;
 int EINVAL ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int ni_ai_config_analog_trig(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int a, b, modebits;
 int err = 0;





 if (!boardtype.has_analog_trig)
  return -EINVAL;
 if ((data[1] & 0xffff0000) != COMEDI_EV_SCAN_BEGIN) {
  data[1] &= (COMEDI_EV_SCAN_BEGIN | 0xffff);
  err++;
 }
 if (data[2] >= boardtype.n_adchan) {
  data[2] = boardtype.n_adchan - 1;
  err++;
 }
 if (data[3] > 255) {
  data[3] = 255;
  err++;
 }
 if (data[4] > 255) {
  data[4] = 255;
  err++;
 }
 a = data[3];
 b = data[4];
 modebits = data[1] & 0xff;
 if (modebits & 0xf0) {

  if (b < a) {

   a = data[4];
   b = data[3];
   modebits =
       ((data[1] & 0xf) << 4) | ((data[1] & 0xf0) >> 4);
  }
  devpriv->atrig_low = a;
  devpriv->atrig_high = b;
  switch (modebits) {
  case 0x81:
   devpriv->atrig_mode = 6;
   break;
  case 0x42:
   devpriv->atrig_mode = 3;
   break;
  case 0x96:
   devpriv->atrig_mode = 2;
   break;
  default:
   data[1] &= ~0xff;
   err++;
  }
 } else {

  if (b != 0) {
   data[4] = 0;
   err++;
  }
  switch (modebits) {
  case 0x06:
   devpriv->atrig_high = a;
   devpriv->atrig_mode = 0;
   break;
  case 0x09:
   devpriv->atrig_low = a;
   devpriv->atrig_mode = 1;
   break;
  default:
   data[1] &= ~0xff;
   err++;
  }
 }
 if (err)
  return -EAGAIN;
 return 5;
}
