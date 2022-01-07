
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int convert_arg; int scan_end_arg; int chanlist_len; int stop_arg; int flags; int * chanlist; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int MAX_SCAN_SPEED ;
 int MIN_SCAN_SPEED ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 int dmm32at_ns_to_timer (int*,int) ;

__attribute__((used)) static int dmm32at_ai_cmdtest(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 int start_chan, gain, i;
 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER ;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER ;
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
 if (cmd->convert_src != TRIG_TIMER && cmd->convert_src != TRIG_EXT)
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
  if (cmd->scan_begin_arg < 1000000) {
   cmd->scan_begin_arg = 1000000;
   err++;
  }
  if (cmd->scan_begin_arg > 1000000000) {
   cmd->scan_begin_arg = 1000000000;
   err++;
  }
 } else {



  if (cmd->scan_begin_arg > 9) {
   cmd->scan_begin_arg = 9;
   err++;
  }
 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg >= 17500)
   cmd->convert_arg = 20000;
  else if (cmd->convert_arg >= 12500)
   cmd->convert_arg = 15000;
  else if (cmd->convert_arg >= 7500)
   cmd->convert_arg = 10000;
  else
   cmd->convert_arg = 5000;

 } else {


  if (cmd->convert_arg > 9) {
   cmd->convert_arg = 9;
   err++;
  }
 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_COUNT) {
  if (cmd->stop_arg > 0xfffffff0) {
   cmd->stop_arg = 0xfffffff0;
   err++;
  }
  if (cmd->stop_arg == 0) {
   cmd->stop_arg = 1;
   err++;
  }
 } else {

  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp = cmd->scan_begin_arg;
  dmm32at_ns_to_timer(&cmd->scan_begin_arg,
        cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }
 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;
  dmm32at_ns_to_timer(&cmd->convert_arg,
        cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->convert_arg)
   err++;
  if (cmd->scan_begin_src == TRIG_TIMER &&
      cmd->scan_begin_arg <
      cmd->convert_arg * cmd->scan_end_arg) {
   cmd->scan_begin_arg =
       cmd->convert_arg * cmd->scan_end_arg;
   err++;
  }
 }

 if (err)
  return 4;




 if (cmd->chanlist) {
  gain = CR_RANGE(cmd->chanlist[0]);
  start_chan = CR_CHAN(cmd->chanlist[0]);
  for (i = 1; i < cmd->chanlist_len; i++) {
   if (CR_CHAN(cmd->chanlist[i]) !=
       (start_chan + i) % s->n_chan) {
    comedi_error(dev,
          "entries in chanlist must be consecutive channels, counting upwards\n");
    err++;
   }
   if (CR_RANGE(cmd->chanlist[i]) != gain) {
    comedi_error(dev,
          "entries in chanlist must all have the same gain\n");
    err++;
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
