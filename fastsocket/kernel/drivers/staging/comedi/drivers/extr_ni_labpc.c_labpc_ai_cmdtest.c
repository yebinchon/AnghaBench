
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int stop_arg; } ;
struct TYPE_2__ {scalar_t__ register_layout; int ai_speed; } ;



 int TRIG_EXT ;
 int TRIG_FOLLOW ;

 int TRIG_NOW ;
 int TRIG_TIMER ;
 scalar_t__ labpc_1200_layout ;
 int labpc_adc_timing (struct comedi_device*,struct comedi_cmd*) ;
 scalar_t__ labpc_ai_chanlist_invalid (struct comedi_device*,struct comedi_cmd*) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int labpc_ai_cmdtest(struct comedi_device *dev,
       struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp, tmp2;
 int stop_mask;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | TRIG_EXT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER | TRIG_FOLLOW | TRIG_EXT;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER | TRIG_EXT;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= 129;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 stop_mask = 129 | 128;
 if (thisboard->register_layout == labpc_1200_layout)
  stop_mask |= TRIG_EXT;
 cmd->stop_src &= stop_mask;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;



 if (cmd->start_src != TRIG_NOW && cmd->start_src != TRIG_EXT)
  err++;
 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_FOLLOW &&
     cmd->scan_begin_src != TRIG_EXT)
  err++;
 if (cmd->convert_src != TRIG_TIMER && cmd->convert_src != TRIG_EXT)
  err++;
 if (cmd->stop_src != 129 &&
     cmd->stop_src != TRIG_EXT && cmd->stop_src != 128)
  err++;


 if (cmd->start_src == TRIG_EXT && cmd->stop_src == TRIG_EXT)
  err++;

 if (err)
  return 2;



 if (cmd->start_arg == TRIG_NOW && cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (!cmd->chanlist_len) {
  err++;
 }
 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < thisboard->ai_speed) {
   cmd->convert_arg = thisboard->ai_speed;
   err++;
  }
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->convert_src == TRIG_TIMER &&
      cmd->scan_begin_arg <
      cmd->convert_arg * cmd->chanlist_len) {
   cmd->scan_begin_arg =
       cmd->convert_arg * cmd->chanlist_len;
   err++;
  }
  if (cmd->scan_begin_arg <
      thisboard->ai_speed * cmd->chanlist_len) {
   cmd->scan_begin_arg =
       thisboard->ai_speed * cmd->chanlist_len;
   err++;
  }
 }

 switch (cmd->stop_src) {
 case 129:
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



 tmp = cmd->convert_arg;
 tmp2 = cmd->scan_begin_arg;
 labpc_adc_timing(dev, cmd);
 if (tmp != cmd->convert_arg || tmp2 != cmd->scan_begin_arg)
  err++;

 if (err)
  return 4;

 if (labpc_ai_chanlist_invalid(dev, cmd))
  return 5;

 return 0;
}
