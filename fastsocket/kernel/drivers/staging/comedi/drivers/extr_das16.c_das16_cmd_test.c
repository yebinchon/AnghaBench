
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int scan_end_arg; int chanlist_len; unsigned int convert_arg; scalar_t__ stop_arg; int flags; int * chanlist; } ;
struct TYPE_4__ {int divisor2; int divisor1; int clockbase; } ;
struct TYPE_3__ {int size; int ai_speed; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,unsigned int*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das16_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 int err = 0, tmp;
 int gain, start_chan, i;
 int mask;


 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 mask = TRIG_FOLLOW;

 if (thisboard->size > 0x400)
  mask |= TRIG_TIMER | TRIG_EXT;
 cmd->scan_begin_src &= mask;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 mask = TRIG_TIMER | TRIG_EXT;

 if (thisboard->size > 0x400)
  mask |= TRIG_NOW;
 cmd->convert_src &= mask;
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
     cmd->scan_begin_src != TRIG_EXT &&
     cmd->scan_begin_src != TRIG_FOLLOW)
  err++;
 if (cmd->convert_src != TRIG_TIMER &&
     cmd->convert_src != TRIG_EXT && cmd->convert_src != TRIG_NOW)
  err++;
 if (cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_COUNT)
  err++;


 if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == TRIG_NOW)
  err++;
 if (cmd->scan_begin_src != TRIG_FOLLOW && cmd->convert_src != TRIG_NOW)
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

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg <
      thisboard->ai_speed * cmd->chanlist_len) {
   cmd->scan_begin_arg =
       thisboard->ai_speed * cmd->chanlist_len;
   err++;
  }
 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < thisboard->ai_speed) {
   cmd->convert_arg = thisboard->ai_speed;
   err++;
  }
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
  unsigned int tmp = cmd->scan_begin_arg;

  i8253_cascade_ns_to_timer_2div(devpriv->clockbase,
            &(devpriv->divisor1),
            &(devpriv->divisor2),
            &(cmd->scan_begin_arg),
            cmd->flags & TRIG_ROUND_MASK);
  err += (tmp != cmd->scan_begin_arg);
 }
 if (cmd->convert_src == TRIG_TIMER) {
  unsigned int tmp = cmd->convert_arg;

  i8253_cascade_ns_to_timer_2div(devpriv->clockbase,
            &(devpriv->divisor1),
            &(devpriv->divisor2),
            &(cmd->convert_arg),
            cmd->flags & TRIG_ROUND_MASK);
  err += (tmp != cmd->convert_arg);
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
