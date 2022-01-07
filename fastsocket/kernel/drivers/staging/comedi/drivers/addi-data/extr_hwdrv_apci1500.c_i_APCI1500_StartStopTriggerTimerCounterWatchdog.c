
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
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;



 int EINVAL ;



 TYPE_1__* devpriv ;
 int i_TimerCounter1Enabled ;
 int i_TimerCounter1Init ;
 int i_TimerCounter2Enabled ;
 int i_TimerCounter2Init ;
 int i_TimerCounterWatchdogInterrupt ;
 int i_WatchdogCounter3Enabled ;
 int i_WatchdogCounter3Init ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;

int i_APCI1500_StartStopTriggerTimerCounterWatchdog(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_CommandAndStatusValue;

 switch (data[0]) {
 case 133:
  switch (data[1]) {
  case 130:
   if (i_TimerCounter1Init == 1) {
    if (i_TimerCounterWatchdogInterrupt == 1) {
     i_CommandAndStatusValue = 0xC4;
    }
    else {
     i_CommandAndStatusValue = 0xE4;
    }



    i_TimerCounter1Enabled = 1;



    outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    outb(i_CommandAndStatusValue,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
   }
   else {
    printk("\nCounter/Timer1 not configured\n");
    return -EINVAL;
   }
   break;

  case 129:
   outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(0x00,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_TimerCounter1Enabled = 0;
   break;

  case 128:
   if (i_TimerCounter1Init == 1) {
    if (i_TimerCounter1Enabled == 1) {




     i_CommandAndStatusValue = 0x6;
    }
    else {




     i_CommandAndStatusValue = 0x2;
    }




    outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    outb(i_CommandAndStatusValue,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
   }
   else {
    printk("\nCounter/Timer1 not configured\n");
    return -EINVAL;
   }
   break;

  default:
   printk("\nThe specified option for start/stop/trigger does not exist\n");
   return -EINVAL;
  }
  break;

 case 132:
  switch (data[1]) {
  case 130:
   if (i_TimerCounter2Init == 1) {
    if (i_TimerCounterWatchdogInterrupt == 1) {
     i_CommandAndStatusValue = 0xC4;
    }
    else {
     i_CommandAndStatusValue = 0xE4;
    }



    i_TimerCounter2Enabled = 1;



    outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    outb(i_CommandAndStatusValue,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
   }
   else {
    printk("\nCounter/Timer2 not configured\n");
    return -EINVAL;
   }
   break;

  case 129:
   outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(0x00,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_TimerCounter2Enabled = 0;
   break;
  case 128:
   if (i_TimerCounter2Init == 1) {
    if (i_TimerCounter2Enabled == 1) {




     i_CommandAndStatusValue = 0x6;
    }
    else {




     i_CommandAndStatusValue = 0x2;
    }




    outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    outb(i_CommandAndStatusValue,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
   }
   else {
    printk("\nCounter/Timer2 not configured\n");
    return -EINVAL;
   }
   break;
  default:
   printk("\nThe specified option for start/stop/trigger does not exist\n");
   return -EINVAL;
  }
  break;
 case 131:
  switch (data[1]) {
  case 130:
   if (i_WatchdogCounter3Init == 1) {

    if (i_TimerCounterWatchdogInterrupt == 1) {
     i_CommandAndStatusValue = 0xC4;
    }
    else {
     i_CommandAndStatusValue = 0xE4;
    }



    i_WatchdogCounter3Enabled = 1;



    outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    outb(i_CommandAndStatusValue,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);

   }
   else {
    printk("\nWatchdog/Counter3 not configured\n");
    return -EINVAL;
   }
   break;

  case 129:
   outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(0x00,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_WatchdogCounter3Enabled = 0;
   break;

  case 128:
   switch (data[2]) {
   case 0:
    if (i_WatchdogCounter3Init == 1) {
     if (i_WatchdogCounter3Enabled == 1) {




      i_CommandAndStatusValue = 0x6;
     }
     else {




      i_CommandAndStatusValue = 0x2;
     }




     outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     outb(i_CommandAndStatusValue,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
    }
    else {
     printk("\nCounter3 not configured\n");
     return -EINVAL;
    }
    break;
   case 1:

    if (i_WatchdogCounter3Init == 1) {




     outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     outb(0x6,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
    }
    else {
     printk("\nWatchdog 3 not configured\n");
     return -EINVAL;
    }
    break;
   default:
    printk("\nWrong choice of watchdog/counter3\n");
    return -EINVAL;
   }
   break;
  default:
   printk("\nThe specified option for start/stop/trigger does not exist\n");
   return -EINVAL;
  }
  break;
 default:
  printk("\nThe specified choice for counter/watchdog/timer does not exist\n");
  return -EINVAL;
 }
 return insn->n;
}
