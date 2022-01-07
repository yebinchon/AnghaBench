
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int tsk_Current; } ;


 scalar_t__ APCI3501_TCW_IRQ ;
 scalar_t__ APCI3501_TCW_PROG ;
 scalar_t__ APCI3501_TCW_TRIG_STATUS ;
 scalar_t__ APCI3501_WATCHDOG ;
 int SIGIO ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned long,scalar_t__) ;
 int send_sig (int ,int ,int ) ;

void v_APCI3501_Interrupt(int irq, void *d)
{
 int i_temp;
 struct comedi_device *dev = d;
 unsigned int ui_Timer_AOWatchdog;
 unsigned long ul_Command1;

 ul_Command1 =
  inl(devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

 ul_Command1 = (ul_Command1 & 0xFFFFF9FDul);
 outl(ul_Command1,
  devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

 ui_Timer_AOWatchdog =
  inl(devpriv->iobase + APCI3501_WATCHDOG +
  APCI3501_TCW_IRQ) & 0x1;

 if ((!ui_Timer_AOWatchdog)) {
  comedi_error(dev, "IRQ from unknow source");
  return;
 }




 send_sig(SIGIO, devpriv->tsk_Current, 0);
 ul_Command1 =
  inl(devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
 ul_Command1 = ((ul_Command1 & 0xFFFFF9FDul) | 1 << 1);
 outl(ul_Command1,
  devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
 i_temp = inl(devpriv->iobase + APCI3501_WATCHDOG +
  APCI3501_TCW_TRIG_STATUS) & 0x1;
 return;
}
