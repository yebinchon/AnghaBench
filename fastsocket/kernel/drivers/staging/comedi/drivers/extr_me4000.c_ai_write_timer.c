
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {int chan_timer_reg; int chan_pre_timer_reg; int scan_timer_high_reg; int scan_timer_low_reg; int scan_pre_timer_high_reg; int scan_pre_timer_low_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;


 int CALL_PDEBUG (char*) ;
 TYPE_2__* info ;
 int me4000_outl (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ai_write_timer(struct comedi_device *dev,
      unsigned int init_ticks,
      unsigned int scan_ticks, unsigned int chan_ticks)
{

 CALL_PDEBUG("In ai_write_timer()\n");

 me4000_outl(dev, init_ticks - 1,
      info->ai_context.scan_pre_timer_low_reg);
 me4000_outl(dev, 0x0, info->ai_context.scan_pre_timer_high_reg);

 if (scan_ticks) {
  me4000_outl(dev, scan_ticks - 1,
       info->ai_context.scan_timer_low_reg);
  me4000_outl(dev, 0x0, info->ai_context.scan_timer_high_reg);
 }

 me4000_outl(dev, chan_ticks - 1, info->ai_context.chan_pre_timer_reg);
 me4000_outl(dev, chan_ticks - 1, info->ai_context.chan_timer_reg);
}
