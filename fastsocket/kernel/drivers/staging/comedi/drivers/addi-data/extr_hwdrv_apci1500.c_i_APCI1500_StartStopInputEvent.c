
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 int APCI1500_RW_MASTER_CONFIGURATION_CONTROL ;
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ;
 int APCI1500_RW_PORT_A_COMMAND_AND_STATUS ;
 int APCI1500_RW_PORT_A_SPECIFICATION ;
 int APCI1500_RW_PORT_B_COMMAND_AND_STATUS ;
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;
 int EINVAL ;


 TYPE_1__* devpriv ;
 int i_Event1Status ;
 int i_Event2Status ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;

int i_APCI1500_StartStopInputEvent(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 int i_Event1InterruptStatus = 0, i_Event2InterruptStatus =
  0, i_RegValue;
 switch (data[0]) {
 case 129:




  if (data[1] == 1 || data[1] == 2) {




   if (data[1] == 1) {



    if (i_Event1Status == 1) {



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);




     outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xC0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF4,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     i_Event1InterruptStatus = 1;
     outb(APCI1500_RW_PORT_A_SPECIFICATION,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     i_RegValue =
      inb(devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xD0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);

    }
    else {
     printk("\nEvent 1 not initialised\n");
     return -EINVAL;
    }
   }
   if (data[1] == 2) {

    if (i_Event2Status == 1) {



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0x74,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);




     outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xC0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF4,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xD0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     i_Event2InterruptStatus = 1;
    }
    else {
     printk("\nEvent 2 not initialised\n");
     return -EINVAL;
    }
   }
  }
  else {
   printk("\nThe port parameter is in error\n");
   return -EINVAL;
  }

  break;

 case 128:




  if (data[1] == 1 || data[1] == 2) {




   if (data[1] == 1) {



    if (i_Event1Status == 1) {



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);




     outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xE0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF4,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     i_Event1InterruptStatus = 0;
    }
    else {
     printk("\nEvent 1 not initialised\n");
     return -EINVAL;
    }
   }
   if (data[1] == 2) {



    if (i_Event2Status == 1) {



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0x74,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);




     outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xE0,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);



     outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



     outb(0xF4,
      devpriv->iobase +
      APCI1500_Z8536_CONTROL_REGISTER);
     i_Event2InterruptStatus = 0;
    }
    else {
     printk("\nEvent 2 not initialised\n");
     return -EINVAL;
    }
   }

  }
  else {
   printk("\nThe port parameter is in error\n");
   return -EINVAL;
  }
  break;
 default:
  printk("\nThe option of START/STOP logic does not exist\n");
  return -EINVAL;
 }

 return insn->n;
}
