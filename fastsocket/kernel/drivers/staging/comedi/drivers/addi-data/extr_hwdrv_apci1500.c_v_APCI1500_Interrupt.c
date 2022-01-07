
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int tsk_Current; scalar_t__ i_IobaseAmcc; } ;


 scalar_t__ APCI1500_COUNTER ;
 scalar_t__ APCI1500_OR_PRIORITY ;
 int APCI1500_RW_CPT_TMR1_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR2_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR3_CMD_STATUS ;
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ;
 int APCI1500_RW_PORT_A_COMMAND_AND_STATUS ;
 int APCI1500_RW_PORT_A_INTERRUPT_CONTROL ;
 int APCI1500_RW_PORT_A_SPECIFICATION ;
 int APCI1500_RW_PORT_B_COMMAND_AND_STATUS ;
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;
 scalar_t__ APCI1500_Z8536_PORT_B ;
 int SIGIO ;
 TYPE_1__* devpriv ;
 scalar_t__ i_CounterLogic ;
 int i_InputChannel ;
 int i_InterruptMask ;
 scalar_t__ i_Logic ;
 int inb (scalar_t__) ;
 unsigned int inl (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int printk (char*) ;
 int send_sig (int ,int ,int ) ;

__attribute__((used)) static void v_APCI1500_Interrupt(int irq, void *d)
{

 struct comedi_device *dev = d;
 unsigned int ui_InterruptStatus = 0;
 int i_RegValue = 0;
 i_InterruptMask = 0;




 ui_InterruptStatus = inl(devpriv->i_IobaseAmcc + 0x38);




 if ((ui_InterruptStatus & 0x800000) == 0x800000) {
  outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  i_RegValue =
   inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  if ((i_RegValue & 0x60) == 0x60) {



   outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   i_RegValue = (i_RegValue & 0x0F) | 0x20;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_InterruptMask = i_InterruptMask | 1;
   if (i_Logic == APCI1500_OR_PRIORITY) {
    outb(APCI1500_RW_PORT_A_SPECIFICATION,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    i_RegValue =
     inb(devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);




    outb(APCI1500_RW_PORT_A_INTERRUPT_CONTROL,
     devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);
    i_RegValue =
     inb(devpriv->iobase +
     APCI1500_Z8536_CONTROL_REGISTER);

    i_InputChannel = 1 + (i_RegValue >> 1);

   }
   else {
    i_InputChannel = 0;
   }
  }




  outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  i_RegValue =
   inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  if ((i_RegValue & 0x60) == 0x60) {



   outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   i_RegValue = (i_RegValue & 0x0F) | 0x20;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   printk("\n\n\n");



   i_RegValue =
    inb((unsigned int) devpriv->iobase +
    APCI1500_Z8536_PORT_B);

   i_RegValue = i_RegValue & 0xC0;




   if (i_RegValue) {




    outl(0x0, devpriv->i_IobaseAmcc + 0x38);

    if (i_RegValue & 0x80) {
     i_InterruptMask =
      i_InterruptMask | 0x40;
    }

    if (i_RegValue & 0x40) {
     i_InterruptMask =
      i_InterruptMask | 0x80;
    }
   }
   else {
    i_InterruptMask = i_InterruptMask | 2;
   }
  }




  outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  i_RegValue =
   inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  if ((i_RegValue & 0x60) == 0x60) {



   outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   i_RegValue = (i_RegValue & 0x0F) | 0x20;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_InterruptMask = i_InterruptMask | 4;
  }



  outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  i_RegValue =
   inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  if ((i_RegValue & 0x60) == 0x60) {



   outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   i_RegValue = (i_RegValue & 0x0F) | 0x20;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_InterruptMask = i_InterruptMask | 8;
  }




  outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  i_RegValue =
   inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
  if ((i_RegValue & 0x60) == 0x60) {



   outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   i_RegValue = (i_RegValue & 0x0F) | 0x20;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   if (i_CounterLogic == APCI1500_COUNTER) {
    i_InterruptMask = i_InterruptMask | 0x10;
   }
   else {
    i_InterruptMask = i_InterruptMask | 0x20;
   }
  }

  send_sig(SIGIO, devpriv->tsk_Current, 0);







  outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
   devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



  outb(0xD0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 }
 else {
  printk("\nInterrupt from unknown source\n");

 }
 return;
}
