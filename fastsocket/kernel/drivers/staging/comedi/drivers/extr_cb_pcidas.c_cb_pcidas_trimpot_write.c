
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int* trimpot_value; } ;
struct TYPE_3__ {int trimpot; } ;




 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 TYPE_1__* thisboard ;
 int trimpot_7376_write (struct comedi_device*,unsigned int) ;
 int trimpot_8402_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int cb_pcidas_trimpot_write(struct comedi_device *dev,
       unsigned int channel, unsigned int value)
{
 if (devpriv->trimpot_value[channel] == value)
  return 1;

 devpriv->trimpot_value[channel] = value;
 switch (thisboard->trimpot) {
 case 129:
  trimpot_7376_write(dev, value);
  break;
 case 128:
  trimpot_8402_write(dev, channel, value);
  break;
 default:
  comedi_error(dev, "driver bug?");
  return -1;
  break;
 }

 return 1;
}
