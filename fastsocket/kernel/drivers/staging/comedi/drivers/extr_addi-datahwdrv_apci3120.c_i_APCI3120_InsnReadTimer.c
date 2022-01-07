
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ b_Timer2Mode; int b_DigitalOutputRegister; scalar_t__ iobase; } ;


 unsigned short APCI3120_FC_TIMER ;
 scalar_t__ APCI3120_RD_STATUS ;
 int APCI3120_SELECT_TIMER_2_HIGH_WORD ;
 int APCI3120_SELECT_TIMER_2_LOW_WORD ;
 scalar_t__ APCI3120_TIMER ;
 scalar_t__ APCI3120_TIMER_CRT0 ;
 scalar_t__ APCI3120_TIMER_STATUS_REGISTER ;
 scalar_t__ APCI3120_TIMER_VALUE ;
 scalar_t__ APCI3120_WATCHDOG ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 unsigned short inw (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

int i_APCI3120_InsnReadTimer(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned char b_Tmp;
 unsigned short us_TmpValue, us_TmpValue_2, us_StatusValue;

 if ((devpriv->b_Timer2Mode != APCI3120_WATCHDOG)
  && (devpriv->b_Timer2Mode != APCI3120_TIMER)) {
  comedi_error(dev, "\nread:timer2  not configured ");
 }


 if (devpriv->b_Timer2Mode == APCI3120_TIMER) {


  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_LOW_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);

  us_TmpValue = inw(devpriv->iobase + APCI3120_TIMER_VALUE);


  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_HIGH_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);

  us_TmpValue_2 = inw(devpriv->iobase + APCI3120_TIMER_VALUE);


  data[0] = (unsigned int) ((us_TmpValue) | ((us_TmpValue_2) << 16));

 } else
 {

  us_StatusValue = inw(devpriv->iobase + APCI3120_RD_STATUS);
  us_StatusValue =
   ((us_StatusValue & APCI3120_FC_TIMER) >> 12) & 1;
  if (us_StatusValue == 1) {

   inb(devpriv->iobase + APCI3120_TIMER_STATUS_REGISTER);
  }
  data[0] = us_StatusValue;
 }
 return insn->n;
}
