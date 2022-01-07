
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ b_TimerSelectMode; scalar_t__ iobase; } ;


 scalar_t__ ADDIDATA_TIMER ;
 scalar_t__ ADDIDATA_WATCHDOG ;
 scalar_t__ APCI3501_TCW_PROG ;
 scalar_t__ APCI3501_TCW_TRIG_STATUS ;
 scalar_t__ APCI3501_WATCHDOG ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI3501_StartStopWriteTimerCounterWatchdog(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ul_Command1 = 0;
 int i_Temp;
 if (devpriv->b_TimerSelectMode == ADDIDATA_WATCHDOG) {

  if (data[1] == 1) {
   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x1UL;

   outl(ul_Command1,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  }

  else if (data[1] == 0)
  {

   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = ul_Command1 & 0xFFFFF9FEUL;
   outl(0x0,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  } else if (data[1] == 2) {
   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x200UL;
   outl(ul_Command1,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  }
 }

 if (devpriv->b_TimerSelectMode == ADDIDATA_TIMER) {
  if (data[1] == 1) {

   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x1UL;

   outl(ul_Command1,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  } else if (data[1] == 0) {

   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = ul_Command1 & 0xFFFFF9FEUL;
   outl(ul_Command1,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  }

  else if (data[1] == 2) {

   ul_Command1 =
    inl(devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
   ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x200UL;
   outl(ul_Command1,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  }

 }
 i_Temp = inl(devpriv->iobase + APCI3501_WATCHDOG +
  APCI3501_TCW_TRIG_STATUS) & 0x1;
 return insn->n;
}
