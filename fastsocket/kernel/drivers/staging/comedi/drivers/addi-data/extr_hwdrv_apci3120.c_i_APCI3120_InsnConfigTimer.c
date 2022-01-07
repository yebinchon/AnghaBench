
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned char b_Timer2Interrupt; int us_OutputRegister; int b_ModeSelectRegister; int b_TimerSelectMode; int b_DigitalOutputRegister; unsigned int b_Timer2Mode; scalar_t__ iobase; } ;
struct TYPE_3__ {int pc_DriverName; } ;


 int APCI3120_DISABLE_EOC_INT ;
 int APCI3120_DISABLE_EOS_INT ;
 int APCI3120_DISABLE_TIMER2 ;
 int APCI3120_DISABLE_TIMER_INT ;
 scalar_t__ APCI3120_RD_STATUS ;
 int APCI3120_SELECT_TIMER_2_HIGH_WORD ;
 int APCI3120_SELECT_TIMER_2_LOW_WORD ;
 unsigned int APCI3120_TIMER ;
 int APCI3120_TIMER_2_MODE_2 ;
 int APCI3120_TIMER_2_MODE_5 ;
 scalar_t__ APCI3120_TIMER_CRT0 ;
 scalar_t__ APCI3120_TIMER_CRT1 ;
 scalar_t__ APCI3120_TIMER_VALUE ;
 unsigned int APCI3120_WATCHDOG ;
 scalar_t__ APCI3120_WRITE_MODE_SELECT ;
 scalar_t__ APCI3120_WR_ADDRESS ;
 int HIWORD (unsigned int) ;
 int LOWORD (unsigned int) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 scalar_t__ inw (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int strcmp (int ,char*) ;
 TYPE_1__* this_board ;

int i_APCI3120_InsnConfigTimer(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{

 unsigned int ui_Timervalue2;
 unsigned short us_TmpValue;
 unsigned char b_Tmp;

 if (!data[1])
  comedi_error(dev, "config:No timer constant !");

 devpriv->b_Timer2Interrupt = (unsigned char) data[2];

 ui_Timervalue2 = data[1] / 1000;


 us_TmpValue = (unsigned short) inw(devpriv->iobase + APCI3120_RD_STATUS);





 if ((us_TmpValue & 0x00B0) == 0x00B0
  || !strcmp(this_board->pc_DriverName, "apci3001")) {

  ui_Timervalue2 = ui_Timervalue2 / 50;
 } else {

  ui_Timervalue2 = ui_Timervalue2 / 70;
 }


 devpriv->us_OutputRegister =
  devpriv->us_OutputRegister & APCI3120_DISABLE_TIMER2;
 outw(devpriv->us_OutputRegister, devpriv->iobase + APCI3120_WR_ADDRESS);


 devpriv->b_ModeSelectRegister =
  devpriv->
  b_ModeSelectRegister & APCI3120_DISABLE_TIMER_INT & 0xEF;


 devpriv->b_ModeSelectRegister =
  devpriv->
  b_ModeSelectRegister & APCI3120_DISABLE_EOC_INT &
  APCI3120_DISABLE_EOS_INT;
 outb(devpriv->b_ModeSelectRegister,
  devpriv->iobase + APCI3120_WRITE_MODE_SELECT);
 if (data[0] == APCI3120_TIMER)
 {






  devpriv->b_TimerSelectMode =
   (devpriv->
   b_TimerSelectMode & 0x0F) | APCI3120_TIMER_2_MODE_2;
  outb(devpriv->b_TimerSelectMode,
   devpriv->iobase + APCI3120_TIMER_CRT1);
  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_LOW_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);
  outw(LOWORD(ui_Timervalue2),
   devpriv->iobase + APCI3120_TIMER_VALUE);


  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_HIGH_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);
  outw(HIWORD(ui_Timervalue2),
   devpriv->iobase + APCI3120_TIMER_VALUE);

  devpriv->b_Timer2Mode = APCI3120_TIMER;

 } else
 {



  devpriv->b_TimerSelectMode =
   (devpriv->
   b_TimerSelectMode & 0x0F) | APCI3120_TIMER_2_MODE_5;
  outb(devpriv->b_TimerSelectMode,
   devpriv->iobase + APCI3120_TIMER_CRT1);
  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_LOW_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);
  outw(LOWORD(ui_Timervalue2),
   devpriv->iobase + APCI3120_TIMER_VALUE);


  b_Tmp = ((devpriv->
    b_DigitalOutputRegister) & 0xF0) |
   APCI3120_SELECT_TIMER_2_HIGH_WORD;
  outb(b_Tmp, devpriv->iobase + APCI3120_TIMER_CRT0);

  outw(HIWORD(ui_Timervalue2),
   devpriv->iobase + APCI3120_TIMER_VALUE);

  devpriv->b_Timer2Mode = APCI3120_WATCHDOG;

 }

 return insn->n;

}
