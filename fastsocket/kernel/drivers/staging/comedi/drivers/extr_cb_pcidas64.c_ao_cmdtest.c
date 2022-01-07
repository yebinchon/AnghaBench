
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int scan_begin_arg; int chanlist_len; int scan_end_arg; int * chanlist; int flags; } ;
struct TYPE_2__ {int ao_scan_speed; } ;


 unsigned int CR_CHAN (int ) ;
 int TIMER_BASE ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 TYPE_1__* board (struct comedi_device*) ;
 int comedi_error (struct comedi_device*,char*) ;
 int get_ao_divisor (int,int ) ;
 int get_divisor (int,int ) ;
 int max_counter_value ;

__attribute__((used)) static int ao_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 unsigned int tmp_arg;
 int i;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_INT | TRIG_EXT;
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
 cmd->stop_src &= TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;




 if (cmd->start_src != TRIG_INT && cmd->start_src != TRIG_EXT)
  err++;
 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_EXT)
  err++;


 if (cmd->convert_src == TRIG_EXT && cmd->scan_begin_src == TRIG_TIMER)
  err++;
 if (cmd->stop_src != TRIG_COUNT &&
     cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_EXT)
  err++;

 if (err)
  return 2;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg < board(dev)->ao_scan_speed) {
   cmd->scan_begin_arg = board(dev)->ao_scan_speed;
   err++;
  }
  if (get_ao_divisor(cmd->scan_begin_arg,
       cmd->flags) > max_counter_value) {
   cmd->scan_begin_arg =
       (max_counter_value + 2) * TIMER_BASE;
   err++;
  }
 }

 if (!cmd->chanlist_len) {
  cmd->chanlist_len = 1;
  err++;
 }
 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp_arg = cmd->scan_begin_arg;
  cmd->scan_begin_arg =
      get_divisor(cmd->scan_begin_arg, cmd->flags) * TIMER_BASE;
  if (tmp_arg != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;

 if (cmd->chanlist) {
  unsigned int first_channel = CR_CHAN(cmd->chanlist[0]);
  for (i = 1; i < cmd->chanlist_len; i++) {
   if (CR_CHAN(cmd->chanlist[i]) != first_channel + i) {
    comedi_error(dev,
          "chanlist must use consecutive channels");
    err++;
    break;
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
