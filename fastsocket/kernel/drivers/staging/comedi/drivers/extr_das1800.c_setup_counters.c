
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int scan_begin_src; int convert_src; int flags; scalar_t__ stop_src; int scan_begin_arg; int convert_arg; } ;
struct TYPE_2__ {int divisor2; int divisor1; } ;


 scalar_t__ DAS1800_COUNTER ;
 int TIMER_BASE ;
 scalar_t__ TRIG_EXT ;

 int TRIG_ROUND_MASK ;

 int das1800_set_frequency (struct comedi_device*) ;
 TYPE_1__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,int *,int) ;
 int i8254_load (scalar_t__,int ,int ,int,int ) ;

__attribute__((used)) static int setup_counters(struct comedi_device *dev, struct comedi_cmd cmd)
{

 switch (cmd.scan_begin_src) {
 case 129:
  if (cmd.convert_src == 128) {

   i8253_cascade_ns_to_timer_2div(TIMER_BASE,
             &(devpriv->divisor1),
             &(devpriv->divisor2),
             &(cmd.convert_arg),
             cmd.
             flags & TRIG_ROUND_MASK);
   if (das1800_set_frequency(dev) < 0) {
    return -1;
   }
  }
  break;
 case 128:

  i8253_cascade_ns_to_timer_2div(TIMER_BASE, &(devpriv->divisor1),
            &(devpriv->divisor2),
            &(cmd.scan_begin_arg),
            cmd.flags & TRIG_ROUND_MASK);
  if (das1800_set_frequency(dev) < 0) {
   return -1;
  }
  break;
 default:
  break;
 }


 if (cmd.stop_src == TRIG_EXT) {

  i8254_load(dev->iobase + DAS1800_COUNTER, 0, 0, 1, 0);
 }

 return 0;
}
