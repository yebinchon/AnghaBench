
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int layout; } ;


 int EINVAL ;

 int ai_config_master_clock_4020 (struct comedi_device*,unsigned int*) ;
 TYPE_1__* board (struct comedi_device*) ;

__attribute__((used)) static int ai_config_master_clock(struct comedi_device *dev, unsigned int *data)
{

 switch (board(dev)->layout) {
 case 128:
  return ai_config_master_clock_4020(dev, data);
  break;
 default:
  return -EINVAL;
  break;
 }

 return -EINVAL;
}
