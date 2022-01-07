
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 int APCI1500_RW_CPT_TMR1_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR2_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR3_CMD_STATUS ;
 int APCI1500_R_CPT_TMR1_VALUE_HIGH ;
 int APCI1500_R_CPT_TMR1_VALUE_LOW ;
 int APCI1500_R_CPT_TMR2_VALUE_HIGH ;
 int APCI1500_R_CPT_TMR2_VALUE_LOW ;
 int APCI1500_R_CPT_TMR3_VALUE_HIGH ;
 int APCI1500_R_CPT_TMR3_VALUE_LOW ;
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;



 int EINVAL ;
 TYPE_1__* devpriv ;
 int i_TimerCounter1Enabled ;
 int i_TimerCounter1Init ;
 int i_TimerCounter2Enabled ;
 int i_TimerCounter2Init ;
 int i_WatchdogCounter3Enabled ;
 int i_WatchdogCounter3Init ;
 unsigned int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;

int i_APCI1500_ReadCounterTimerWatchdog(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_CommandAndStatusValue;
 switch (data[0]) {
 case 130:

  if (i_TimerCounter1Init == 1) {
   if (i_TimerCounter1Enabled == 1) {




    i_CommandAndStatusValue = 0xC;
   }
   else {




    i_CommandAndStatusValue = 0x8;
   }




   outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_CommandAndStatusValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_R_CPT_TMR1_VALUE_HIGH,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] = data[0] << 8;
   data[0] = data[0] & 0xff00;
   outb(APCI1500_R_CPT_TMR1_VALUE_LOW,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    data[0] | inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
  }
  else {
   printk("\nTimer/Counter1 not configured\n");
   return -EINVAL;
  }
  break;
 case 129:

  if (i_TimerCounter2Init == 1) {
   if (i_TimerCounter2Enabled == 1) {




    i_CommandAndStatusValue = 0xC;
   }
   else {




    i_CommandAndStatusValue = 0x8;
   }




   outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_CommandAndStatusValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_R_CPT_TMR2_VALUE_HIGH,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] = data[0] << 8;
   data[0] = data[0] & 0xff00;
   outb(APCI1500_R_CPT_TMR2_VALUE_LOW,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    data[0] | inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
  }
  else {
   printk("\nTimer/Counter2 not configured\n");
   return -EINVAL;
  }
  break;
 case 128:

  if (i_WatchdogCounter3Init == 1) {
   if (i_WatchdogCounter3Enabled == 1) {




    i_CommandAndStatusValue = 0xC;
   }
   else {




    i_CommandAndStatusValue = 0x8;
   }




   outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_CommandAndStatusValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_R_CPT_TMR3_VALUE_HIGH,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] = data[0] << 8;
   data[0] = data[0] & 0xff00;
   outb(APCI1500_R_CPT_TMR3_VALUE_LOW,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   data[0] =
    data[0] | inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
  }
  else {
   printk("\nWatchdogCounter3 not configured\n");
   return -EINVAL;
  }
  break;
 default:
  printk("\nThe choice of timer/counter/watchdog does not exist\n");
  return -EINVAL;
 }

 return insn->n;
}
