
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; scalar_t__ start_arg; scalar_t__ scan_begin_arg; unsigned int convert_arg; int scan_end_arg; int chanlist_len; scalar_t__ stop_arg; int flags; int * chanlist; } ;
struct TYPE_4__ {int divisor2; int divisor1; } ;
struct TYPE_3__ {unsigned int ai_speed; } ;


 int CR_CHAN (int ) ;
 int DAS16M1_XTAL ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 unsigned int TRIG_FOLLOW ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,unsigned int*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das16m1_cmd_test(struct comedi_device *dev,
       struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 unsigned int err = 0, tmp, i;


 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | TRIG_EXT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_FOLLOW;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER | TRIG_EXT;
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


 if (cmd->stop_src != TRIG_COUNT && cmd->stop_src != TRIG_NONE)
  err++;
 if (cmd->start_src != TRIG_NOW && cmd->start_src != TRIG_EXT)
  err++;
 if (cmd->convert_src != TRIG_TIMER && cmd->convert_src != TRIG_EXT)
  err++;

 if (err)
  return 2;


 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW) {

  if (cmd->scan_begin_arg != 0) {
   cmd->scan_begin_arg = 0;
   err++;
  }
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < thisboard->ai_speed) {
   cmd->convert_arg = thisboard->ai_speed;
   err++;
  }
 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (cmd->stop_src == TRIG_COUNT) {

 } else {

  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err)
  return 3;



 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;

  i8253_cascade_ns_to_timer_2div(DAS16M1_XTAL,
            &(devpriv->divisor1),
            &(devpriv->divisor2),
            &(cmd->convert_arg),
            cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->convert_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 1) {
  for (i = 0; i < cmd->chanlist_len; i++) {

   if ((i % 2) != (CR_CHAN(cmd->chanlist[i]) % 2)) {
    comedi_error(dev, "bad chanlist:\n"
          " even/odd channels must go have even/odd chanlist indices");
    err++;
   }
  }
  if ((cmd->chanlist_len % 2) != 0) {
   comedi_error(dev,
         "chanlist must be of even length or length 1");
   err++;
  }
 }

 if (err)
  return 5;

 return 0;
}
