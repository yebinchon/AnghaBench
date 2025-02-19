
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int scan_end_arg; int chanlist_len; scalar_t__ stop_arg; int flags; int * chanlist; } ;
struct TYPE_4__ {int ao_divisor2; int ao_divisor1; } ;
struct TYPE_3__ {int ao_scan_speed; } ;


 int CR_CHAN (int ) ;
 int TIMER_BASE ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,int*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int cb_pcidas_ao_cmdtest(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 tmp = cmd->start_src;
 cmd->start_src &= TRIG_INT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER | TRIG_EXT;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_NOW;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT | TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;



 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_EXT)
  err++;
 if (cmd->stop_src != TRIG_COUNT && cmd->stop_src != TRIG_NONE)
  err++;

 if (err)
  return 2;



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg < thisboard->ao_scan_speed) {
   cmd->scan_begin_arg = thisboard->ao_scan_speed;
   err++;
  }
 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_NONE) {

  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp = cmd->scan_begin_arg;
  i8253_cascade_ns_to_timer_2div(TIMER_BASE,
            &(devpriv->ao_divisor1),
            &(devpriv->ao_divisor2),
            &(cmd->scan_begin_arg),
            cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 1) {
  if (CR_CHAN(cmd->chanlist[0]) != 0 ||
      CR_CHAN(cmd->chanlist[1]) != 1) {
   comedi_error(dev,
         "channels must be ordered channel 0, channel 1 in chanlist\n");
   err++;
  }
 }

 if (err)
  return 5;

 return 0;
}
