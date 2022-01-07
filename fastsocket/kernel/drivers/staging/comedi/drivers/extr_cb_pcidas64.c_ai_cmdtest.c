
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int convert_arg; int chanlist_len; int scan_begin_arg; int scan_end_arg; int stop_arg; int * chanlist; } ;
struct TYPE_2__ {scalar_t__ layout; int ai_speed; } ;


 int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ LAYOUT_4020 ;


 unsigned int TRIG_FOLLOW ;

 unsigned int TRIG_NOW ;
 unsigned int TRIG_OTHER ;
 unsigned int TRIG_TIMER ;
 TYPE_1__* board (struct comedi_device*) ;
 int check_adc_timing (struct comedi_device*,struct comedi_cmd*) ;
 int comedi_error (struct comedi_device*,char*) ;

__attribute__((used)) static int ai_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 unsigned int tmp_arg, tmp_arg2;
 int i;
 int aref;
 unsigned int triggers;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | 129;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 triggers = TRIG_TIMER;
 if (board(dev)->layout == LAYOUT_4020)
  triggers |= TRIG_OTHER;
 else
  triggers |= TRIG_FOLLOW;
 cmd->scan_begin_src &= triggers;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 triggers = TRIG_TIMER;
 if (board(dev)->layout == LAYOUT_4020)
  triggers |= TRIG_NOW;
 else
  triggers |= 129;
 cmd->convert_src &= triggers;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= 130;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= 130 | 129 | 128;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;




 if (cmd->start_src != TRIG_NOW && cmd->start_src != 129)
  err++;
 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_OTHER &&
     cmd->scan_begin_src != TRIG_FOLLOW)
  err++;
 if (cmd->convert_src != TRIG_TIMER &&
     cmd->convert_src != 129 && cmd->convert_src != TRIG_NOW)
  err++;
 if (cmd->stop_src != 130 &&
     cmd->stop_src != 128 && cmd->stop_src != 129)
  err++;


 if (cmd->convert_src == 129 && cmd->scan_begin_src == TRIG_TIMER)
  err++;
 if (cmd->stop_src != 130 &&
     cmd->stop_src != 128 && cmd->stop_src != 129)
  err++;

 if (err)
  return 2;



 if (cmd->convert_src == TRIG_TIMER) {
  if (board(dev)->layout == LAYOUT_4020) {
   if (cmd->convert_arg) {
    cmd->convert_arg = 0;
    err++;
   }
  } else {
   if (cmd->convert_arg < board(dev)->ai_speed) {
    cmd->convert_arg = board(dev)->ai_speed;
    err++;
   }
   if (cmd->scan_begin_src == TRIG_TIMER) {

    if (cmd->convert_arg * cmd->chanlist_len >
        cmd->scan_begin_arg) {
     cmd->scan_begin_arg =
         cmd->convert_arg *
         cmd->chanlist_len;
     err++;
    }
   }
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

 switch (cmd->stop_src) {
 case 129:
  break;
 case 130:
  if (!cmd->stop_arg) {
   cmd->stop_arg = 1;
   err++;
  }
  break;
 case 128:
  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
  break;
 default:
  break;
 }

 if (err)
  return 3;



 if (cmd->convert_src == TRIG_TIMER) {
  tmp_arg = cmd->convert_arg;
  tmp_arg2 = cmd->scan_begin_arg;
  check_adc_timing(dev, cmd);
  if (tmp_arg != cmd->convert_arg)
   err++;
  if (tmp_arg2 != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist) {
  aref = CR_AREF(cmd->chanlist[0]);
  for (i = 1; i < cmd->chanlist_len; i++) {
   if (aref != CR_AREF(cmd->chanlist[i])) {
    comedi_error(dev,
          "all elements in chanlist must use the same analog reference");
    err++;
    break;
   }
  }

  if (board(dev)->layout == LAYOUT_4020) {
   unsigned int first_channel = CR_CHAN(cmd->chanlist[0]);
   for (i = 1; i < cmd->chanlist_len; i++) {
    if (CR_CHAN(cmd->chanlist[i]) !=
        first_channel + i) {
     comedi_error(dev,
           "chanlist must use consecutive channels");
     err++;
     break;
    }
   }
   if (cmd->chanlist_len == 3) {
    comedi_error(dev,
          "chanlist cannot be 3 channels long, use 1, 2, or 4 channels");
    err++;
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
