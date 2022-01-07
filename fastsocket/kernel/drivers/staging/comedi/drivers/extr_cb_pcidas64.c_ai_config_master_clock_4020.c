
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int divisor; unsigned int chanspec; } ;
struct TYPE_4__ {TYPE_1__ ext_clock; } ;



 int EAGAIN ;
 int EINVAL ;
 TYPE_2__* priv (struct comedi_device*) ;

__attribute__((used)) static int ai_config_master_clock_4020(struct comedi_device *dev,
           unsigned int *data)
{
 unsigned int divisor = data[4];
 int retval = 0;

 if (divisor < 2) {
  divisor = 2;
  retval = -EAGAIN;
 }

 switch (data[1]) {
 case 128:
  priv(dev)->ext_clock.divisor = divisor;
  priv(dev)->ext_clock.chanspec = data[2];
  break;
 default:
  return -EINVAL;
  break;
 }

 data[4] = divisor;

 return retval ? retval : 5;
}
