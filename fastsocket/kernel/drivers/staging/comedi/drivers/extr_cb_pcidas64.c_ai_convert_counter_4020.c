
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int scan_begin_src; unsigned int scan_begin_arg; } ;
struct TYPE_3__ {unsigned int divisor; } ;
struct TYPE_4__ {TYPE_1__ ext_clock; } ;


 unsigned int TIMER_BASE ;


 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* priv (struct comedi_device*) ;

__attribute__((used)) static uint32_t ai_convert_counter_4020(struct comedi_device *dev,
     struct comedi_cmd *cmd)
{
 unsigned int divisor;

 switch (cmd->scan_begin_src) {
 case 128:
  divisor = cmd->scan_begin_arg / TIMER_BASE;
  break;
 case 129:
  divisor = priv(dev)->ext_clock.divisor;
  break;
 default:
  comedi_error(dev, "bug! failed to set ai pacing!");
  divisor = 1000;
  break;
 }


 return divisor - 2;
}
