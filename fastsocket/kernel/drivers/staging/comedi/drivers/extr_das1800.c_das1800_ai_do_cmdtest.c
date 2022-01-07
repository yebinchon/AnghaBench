
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; unsigned int convert_arg; int chanlist_len; int scan_end_arg; int stop_arg; int flags; int scan_begin_arg; int * chanlist; } ;
struct TYPE_4__ {int divisor2; int divisor1; } ;
struct TYPE_3__ {unsigned int ai_speed; } ;


 int CR_RANGE (int ) ;
 int TIMER_BASE ;

 int TRIG_EXT ;
 int TRIG_FOLLOW ;

 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int UNIPOLAR ;
 unsigned int burst_convert_arg (unsigned int,int) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,unsigned int*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das1800_ai_do_cmdtest(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 unsigned int tmp_arg;
 int i;
 int unipolar;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | TRIG_EXT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_FOLLOW | TRIG_TIMER | TRIG_EXT;
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
 cmd->stop_src &= 129 | TRIG_EXT | 128;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;




 if (cmd->start_src != TRIG_NOW && cmd->start_src != TRIG_EXT)
  err++;
 if (cmd->scan_begin_src != TRIG_FOLLOW &&
     cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_EXT)
  err++;
 if (cmd->convert_src != TRIG_TIMER && cmd->convert_src != TRIG_EXT)
  err++;
 if (cmd->stop_src != 129 &&
     cmd->stop_src != 128 && cmd->stop_src != TRIG_EXT)
  err++;

 if (cmd->scan_begin_src != TRIG_FOLLOW &&
     cmd->convert_src != TRIG_TIMER)
  err++;

 if (err)
  return 2;



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < thisboard->ai_speed) {
   cmd->convert_arg = thisboard->ai_speed;
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



 if (cmd->convert_src == TRIG_TIMER) {

  if (cmd->scan_begin_src == TRIG_FOLLOW) {
   tmp_arg = cmd->convert_arg;

   i8253_cascade_ns_to_timer_2div(TIMER_BASE,
             &(devpriv->divisor1),
             &(devpriv->divisor2),
             &(cmd->convert_arg),
             cmd->
             flags & TRIG_ROUND_MASK);
   if (tmp_arg != cmd->convert_arg)
    err++;
  }

  else {

   tmp_arg = cmd->convert_arg;
   cmd->convert_arg =
       burst_convert_arg(cmd->convert_arg,
           cmd->flags & TRIG_ROUND_MASK);
   if (tmp_arg != cmd->convert_arg)
    err++;

   if (cmd->scan_begin_src == TRIG_TIMER) {

    if (cmd->convert_arg * cmd->chanlist_len >
        cmd->scan_begin_arg) {
     cmd->scan_begin_arg =
         cmd->convert_arg *
         cmd->chanlist_len;
     err++;
    }
    tmp_arg = cmd->scan_begin_arg;

    i8253_cascade_ns_to_timer_2div(TIMER_BASE,
              &(devpriv->
         divisor1),
              &(devpriv->
         divisor2),
              &(cmd->
         scan_begin_arg),
              cmd->
              flags &
              TRIG_ROUND_MASK);
    if (tmp_arg != cmd->scan_begin_arg)
     err++;
   }
  }
 }

 if (err)
  return 4;


 if (cmd->chanlist) {
  unipolar = CR_RANGE(cmd->chanlist[0]) & UNIPOLAR;
  for (i = 1; i < cmd->chanlist_len; i++) {
   if (unipolar != (CR_RANGE(cmd->chanlist[i]) & UNIPOLAR)) {
    comedi_error(dev,
          "unipolar and bipolar ranges cannot be mixed in the chanlist");
    err++;
    break;
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
