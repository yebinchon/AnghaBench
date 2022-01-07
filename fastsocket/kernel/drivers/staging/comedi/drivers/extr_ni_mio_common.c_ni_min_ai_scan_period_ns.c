
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; int ai_speed; } ;


 TYPE_1__ boardtype ;



__attribute__((used)) static unsigned ni_min_ai_scan_period_ns(struct comedi_device *dev,
      unsigned num_channels)
{
 switch (boardtype.reg_type) {
 case 129:
 case 128:

  return boardtype.ai_speed;
  break;
 default:

  break;
 };
 return boardtype.ai_speed * num_channels;
}
