
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int convert_arg; int scan_end_arg; int chanlist_len; int stop_arg; int flags; } ;
struct TYPE_2__ {int ai_speed; } ;


 int TRIG_COUNT ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int dt3k_ns_to_timer (int,int*,int) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int dt3k_ai_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;



 if (err)
  return 2;



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg < this_board->ai_speed) {
   cmd->scan_begin_arg = this_board->ai_speed;
   err++;
  }
  if (cmd->scan_begin_arg > 100 * 16 * 65535) {
   cmd->scan_begin_arg = 100 * 16 * 65535;
   err++;
  }
 } else {

 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < this_board->ai_speed) {
   cmd->convert_arg = this_board->ai_speed;
   err++;
  }
  if (cmd->convert_arg > 50 * 16 * 65535) {
   cmd->convert_arg = 50 * 16 * 65535;
   err++;
  }
 } else {

 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_COUNT) {
  if (cmd->stop_arg > 0x00ffffff) {
   cmd->stop_arg = 0x00ffffff;
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
  dt3k_ns_to_timer(100, &cmd->scan_begin_arg,
     cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->scan_begin_arg)
   err++;
 } else {

 }
 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;
  dt3k_ns_to_timer(50, &cmd->convert_arg,
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
 } else {

 }

 if (err)
  return 4;

 return 0;
}
