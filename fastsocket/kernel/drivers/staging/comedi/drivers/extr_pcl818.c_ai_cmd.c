
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ scan_begin_src; scalar_t__ convert_src; scalar_t__ convert_arg; scalar_t__ stop_arg; int flags; int chanlist; int chanlist_len; } ;
struct TYPE_4__ {scalar_t__ ai_timer1; scalar_t__ ai_scans; scalar_t__ ai_timer2; int ai_data; int ai_data_len; int ai_flags; int ai_chanlist; int ai_n_chan; } ;
struct TYPE_3__ {int prealloc_buf; int prealloc_bufsz; struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int pcl818_ai_cmd_mode (int,struct comedi_device*,struct comedi_subdevice*) ;
 int printk (char*) ;

__attribute__((used)) static int ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int retval;

 printk("pcl818_ai_cmd()\n");
 devpriv->ai_n_chan = cmd->chanlist_len;
 devpriv->ai_chanlist = cmd->chanlist;
 devpriv->ai_flags = cmd->flags;
 devpriv->ai_data_len = s->async->prealloc_bufsz;
 devpriv->ai_data = s->async->prealloc_buf;
 devpriv->ai_timer1 = 0;
 devpriv->ai_timer2 = 0;

 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ai_scans = cmd->stop_arg;
 } else {
  devpriv->ai_scans = 0;
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW) {
  if (cmd->convert_src == TRIG_TIMER) {
   devpriv->ai_timer1 = cmd->convert_arg;
   retval = pcl818_ai_cmd_mode(1, dev, s);
   printk("pcl818_ai_cmd() end\n");
   return retval;
  }
  if (cmd->convert_src == TRIG_EXT) {
   return pcl818_ai_cmd_mode(3, dev, s);
  }
 }

 return -1;
}
