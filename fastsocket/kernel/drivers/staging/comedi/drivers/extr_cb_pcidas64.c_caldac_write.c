
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int layout; } ;
struct TYPE_3__ {unsigned int* caldac_state; } ;





 TYPE_2__* board (struct comedi_device*) ;
 int caldac_8800_write (struct comedi_device*,unsigned int,unsigned int) ;
 int caldac_i2c_write (struct comedi_device*,unsigned int,unsigned int) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static void caldac_write(struct comedi_device *dev, unsigned int channel,
    unsigned int value)
{
 priv(dev)->caldac_state[channel] = value;

 switch (board(dev)->layout) {
 case 129:
 case 128:
  caldac_8800_write(dev, channel, value);
  break;
 case 130:
  caldac_i2c_write(dev, channel, value);
  break;
 default:
  break;
 }
}
