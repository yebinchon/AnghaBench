
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; scalar_t__ start_src; scalar_t__ scan_begin_src; scalar_t__ convert_src; scalar_t__ convert_arg; scalar_t__ scan_begin_arg; int chanlist; int scan_end_arg; int chanlist_len; int flags; } ;
struct TYPE_4__ {int ui_AiNbrofScans; int b_AiContinuous; scalar_t__ ui_AiTimer0; scalar_t__ ui_AiTimer1; int b_ExttrigEnable; int ui_AiDataLength; int AiData; int pui_AiChannelList; int ui_AiScanLength; int ui_AiNbrofChannels; int ui_AiFlags; } ;
struct TYPE_3__ {int prealloc_bufsz; int prealloc_buf; struct comedi_cmd cmd; } ;


 int APCI3120_DISABLE ;
 int APCI3120_ENABLE ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int i_APCI3120_CyclicAnalogInput (int,struct comedi_device*,struct comedi_subdevice*) ;

int i_APCI3120_CommandAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;


 devpriv->ui_AiFlags = cmd->flags;
 devpriv->ui_AiNbrofChannels = cmd->chanlist_len;
 devpriv->ui_AiScanLength = cmd->scan_end_arg;
 devpriv->pui_AiChannelList = cmd->chanlist;


 devpriv->AiData = s->async->prealloc_buf;

 devpriv->ui_AiDataLength = s->async->prealloc_bufsz;

 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ui_AiNbrofScans = cmd->stop_arg;
 } else {
  devpriv->ui_AiNbrofScans = 0;
 }

 devpriv->ui_AiTimer0 = 0;
 devpriv->ui_AiTimer1 = 0;
 if ((devpriv->ui_AiNbrofScans == 0) || (devpriv->ui_AiNbrofScans == -1))
  devpriv->b_AiContinuous = 1;


 if (cmd->start_src == TRIG_EXT)
  devpriv->b_ExttrigEnable = APCI3120_ENABLE;
 else
  devpriv->b_ExttrigEnable = APCI3120_DISABLE;

 if (cmd->scan_begin_src == TRIG_FOLLOW) {

  if (cmd->convert_src == TRIG_TIMER) {


   devpriv->ui_AiTimer0 = cmd->convert_arg;

   return i_APCI3120_CyclicAnalogInput(1, dev, s);
  }

 }
 if ((cmd->scan_begin_src == TRIG_TIMER)
  && (cmd->convert_src == TRIG_TIMER)) {

  devpriv->ui_AiTimer1 = cmd->scan_begin_arg;
  devpriv->ui_AiTimer0 = cmd->convert_arg;

  return i_APCI3120_CyclicAnalogInput(2, dev, s);
 }
 return -1;
}
