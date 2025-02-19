
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {size_t minor; } ;
struct comedi_cmd {int* chanlist; scalar_t__ start_src; int start_arg; scalar_t__ stop_src; scalar_t__ scan_begin_src; int scan_begin_arg; scalar_t__ convert_src; int convert_arg; } ;
struct TYPE_6__ {scalar_t__ iobase; } ;
struct TYPE_5__ {int i_FirstChannel; int i_LastChannel; scalar_t__ i_Offset; } ;
struct TYPE_4__ {struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_TIMER ;
 TYPE_3__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 TYPE_2__* s_BoardInfos ;

int i_APCI3200_CommandAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int ui_Configuration = 0;

 unsigned int ui_Trigger = 0;
 unsigned int ui_TriggerEdge = 0;
 unsigned int ui_Triggermode = 0;
 unsigned int ui_ScanMode = 0;
 unsigned int ui_ConvertTime = 0;
 unsigned int ui_ConvertTimeBase = 0;
 unsigned int ui_DelayTime = 0;
 unsigned int ui_DelayTimeBase = 0;
 unsigned int ui_DelayMode = 0;


 s_BoardInfos[dev->minor].i_FirstChannel = cmd->chanlist[0];
 s_BoardInfos[dev->minor].i_LastChannel = cmd->chanlist[1];
 if (cmd->start_src == TRIG_EXT) {
  ui_Trigger = 1;
  ui_TriggerEdge = cmd->start_arg & 0xFFFF;
  ui_Triggermode = cmd->start_arg >> 16;
 }
 else {
  ui_Trigger = 0;
 }

 if (cmd->stop_src == TRIG_COUNT) {
  ui_ScanMode = 0;
 }
 else {
  ui_ScanMode = 2;
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW) {
  ui_DelayTime = 0;
  ui_DelayTimeBase = 0;
  ui_DelayMode = 0;
 }
 else {
  ui_DelayTime = cmd->scan_begin_arg & 0xFFFF;
  ui_DelayTimeBase = cmd->scan_begin_arg >> 16;
  ui_DelayMode = 1;
 }


 if (cmd->convert_src == TRIG_TIMER) {
  ui_ConvertTime = cmd->convert_arg & 0xFFFF;
  ui_ConvertTimeBase = cmd->convert_arg >> 16;
 } else {
  ui_ConvertTime = 0;
  ui_ConvertTimeBase = 0;
 }







 ui_Configuration =
  inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl((ui_Configuration & 0xFFC00000),
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);

 ui_Configuration = 0;
 ui_Configuration =
  s_BoardInfos[dev->minor].i_FirstChannel | (s_BoardInfos[dev->
   minor].
  i_LastChannel << 8) | 0x00100000 | (ui_Trigger << 24) |
  (ui_TriggerEdge << 25) | (ui_Triggermode << 27) | (ui_DelayMode
  << 18) | (ui_ScanMode << 16);





 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(ui_Configuration,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 0x8);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(ui_DelayTime,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 40);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(ui_DelayTimeBase,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 44);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(ui_ConvertTime,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 32);





 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(ui_ConvertTimeBase,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 36);




 ui_Configuration =
  inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 4);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;


 outl(((ui_Configuration & 0x1E0FF) | 0x00002000),
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 4);



 ui_Configuration = 0;

 ui_Configuration =
  inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);





 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl((ui_Configuration | 0x00080000),
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);
 return 0;
}
