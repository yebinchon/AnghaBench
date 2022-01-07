
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ b_TimerSelectMode; scalar_t__ iobase; } ;


 scalar_t__ ADDIDATA_WATCHDOG ;
 TYPE_1__* devpriv ;
 int i_Temp ;
 int i_WatchdogNbr ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI035_StartStopWriteTimerWatchdog(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_Command = 0;
 int i_Count = 0;
 if (data[0] == 1) {
  ui_Command =
   inl(devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 12);



  ui_Command = (ui_Command & 0xFFFFF9FFUL) | 0x1UL;
  outl(ui_Command,
   devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 12);
 }
 if (data[0] == 2) {
  ui_Command =
   inl(devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 12);



  ui_Command = (ui_Command & 0xFFFFF9FFUL) | 0x200UL;
  outl(ui_Command,
   devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 12);
 }

 if (data[0] == 0)
 {

  ui_Command = 0;




  outl(ui_Command,
   devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 12);
 }
 if (data[0] == 3)
 {
  ui_Command = 0;
  for (i_Count = 1; i_Count <= 4; i_Count++) {
   if (devpriv->b_TimerSelectMode == ADDIDATA_WATCHDOG) {
    ui_Command = 0x2UL;
   } else {
    ui_Command = 0x10UL;
   }
   i_WatchdogNbr = i_Count;
   outl(ui_Command,
    devpriv->iobase + ((i_WatchdogNbr - 1) * 32) +
    0);
  }

 }
 if (data[0] == 4)
 {
  ui_Command = 0;
  for (i_Count = 1; i_Count <= 4; i_Count++) {
   if (devpriv->b_TimerSelectMode == ADDIDATA_WATCHDOG) {
    ui_Command = 0x1UL;
   } else {
    ui_Command = 0x8UL;
   }
   i_WatchdogNbr = i_Count;
   outl(ui_Command,
    devpriv->iobase + ((i_WatchdogNbr - 1) * 32) +
    0);
  }
 }
 if (data[0] == 5)
 {
  ui_Command = 0;
  for (i_Count = 1; i_Count <= 4; i_Count++) {
   if (devpriv->b_TimerSelectMode == ADDIDATA_WATCHDOG) {
    ui_Command = 0x4UL;
   } else {
    ui_Command = 0x20UL;
   }

   i_WatchdogNbr = i_Count;
   outl(ui_Command,
    devpriv->iobase + ((i_WatchdogNbr - 1) * 32) +
    0);
  }
  i_Temp = 1;
 }
 return insn->n;
}
