
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; unsigned long tv_usec; } ;
struct comedi_device {TYPE_2__* read_subdev; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int * chanlist; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_5__ {struct comedi_async* async; } ;
struct TYPE_4__ {unsigned long usec_remainder; unsigned long scan_period; unsigned int usec_current; unsigned int convert_period; scalar_t__ ai_count; unsigned long usec_period; int timer; scalar_t__ timer_running; struct timeval last; } ;


 int COMEDI_CB_EOA ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ TRIG_COUNT ;
 int cfc_write_to_buffer (TYPE_2__*,int ) ;
 int comedi_event (struct comedi_device*,TYPE_2__*) ;
 int del_timer (int *) ;
 TYPE_1__* devpriv ;
 int do_gettimeofday (struct timeval*) ;
 int fake_waveform (struct comedi_device*,int ,int ,unsigned int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void waveform_ai_interrupt(unsigned long arg)
{
 struct comedi_device *dev = (struct comedi_device *)arg;
 struct comedi_async *async = dev->read_subdev->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int i, j;

 unsigned long elapsed_time;
 unsigned int num_scans;
 struct timeval now;

 do_gettimeofday(&now);

 elapsed_time =
     1000000 * (now.tv_sec - devpriv->last.tv_sec) + now.tv_usec -
     devpriv->last.tv_usec;
 devpriv->last = now;
 num_scans =
     (devpriv->usec_remainder + elapsed_time) / devpriv->scan_period;
 devpriv->usec_remainder =
     (devpriv->usec_remainder + elapsed_time) % devpriv->scan_period;
 async->events = 0;

 for (i = 0; i < num_scans; i++) {
  for (j = 0; j < cmd->chanlist_len; j++) {
   cfc_write_to_buffer(dev->read_subdev,
         fake_waveform(dev,
         CR_CHAN(cmd->
          chanlist[j]),
         CR_RANGE(cmd->
           chanlist[j]),
         devpriv->
         usec_current +
         i *
         devpriv->scan_period +
         j *
         devpriv->
         convert_period));
  }
  devpriv->ai_count++;
  if (cmd->stop_src == TRIG_COUNT
      && devpriv->ai_count >= cmd->stop_arg) {
   async->events |= COMEDI_CB_EOA;
   break;
  }
 }

 devpriv->usec_current += elapsed_time;
 devpriv->usec_current %= devpriv->usec_period;

 if ((async->events & COMEDI_CB_EOA) == 0 && devpriv->timer_running)
  mod_timer(&devpriv->timer, jiffies + 1);
 else
  del_timer(&devpriv->timer);

 comedi_event(dev, dev->read_subdev);
}
