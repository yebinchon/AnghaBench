
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; scalar_t__ i_IobaseAddon; } ;


 scalar_t__ APCI1500_DIGITAL_OP ;
 int APCI1500_RW_CPT_TMR1_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR2_CMD_STATUS ;
 int APCI1500_RW_CPT_TMR3_CMD_STATUS ;
 int APCI1500_RW_MASTER_CONFIGURATION_CONTROL ;
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ;
 int APCI1500_RW_PORT_A_COMMAND_AND_STATUS ;
 int APCI1500_RW_PORT_A_DATA_DIRECTION ;
 int APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY ;
 int APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION ;
 int APCI1500_RW_PORT_A_SPECIFICATION ;
 int APCI1500_RW_PORT_B_COMMAND_AND_STATUS ;
 int APCI1500_RW_PORT_B_DATA_DIRECTION ;
 int APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY ;
 int APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION ;
 int APCI1500_RW_PORT_B_SPECIFICATION ;
 int APCI1500_RW_PORT_C_DATA_DIRECTION ;
 int APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY ;
 int APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL ;
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;
 TYPE_1__* devpriv ;
 scalar_t__ i_CounterLogic ;
 scalar_t__ i_Event1Status ;
 scalar_t__ i_Event2Status ;
 scalar_t__ i_InputChannel ;
 scalar_t__ i_InterruptMask ;
 scalar_t__ i_Logic ;
 scalar_t__ i_TimerCounter1Enabled ;
 scalar_t__ i_TimerCounter1Init ;
 scalar_t__ i_TimerCounter2Enabled ;
 scalar_t__ i_TimerCounter2Init ;
 scalar_t__ i_TimerCounterWatchdogInterrupt ;
 scalar_t__ i_WatchdogCounter3Enabled ;
 scalar_t__ i_WatchdogCounter3Init ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

int i_APCI1500_Reset(struct comedi_device *dev)
{
 int i_DummyRead = 0;
 i_TimerCounter1Init = 0;
 i_TimerCounter2Init = 0;
 i_WatchdogCounter3Init = 0;
 i_Event1Status = 0;
 i_Event2Status = 0;
 i_TimerCounterWatchdogInterrupt = 0;
 i_Logic = 0;
 i_CounterLogic = 0;
 i_InterruptMask = 0;
 i_InputChannel = 0;;
 i_TimerCounter1Enabled = 0;
 i_TimerCounter2Enabled = 0;
 i_WatchdogCounter3Enabled = 0;




 i_DummyRead = inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 i_DummyRead = inb(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(1, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);




 outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0xF4, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);




 outb(APCI1500_RW_PORT_A_SPECIFICATION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0x10, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);


 outb(APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);


 outb(APCI1500_RW_PORT_A_DATA_DIRECTION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);




 outb(APCI1500_RW_PORT_B_SPECIFICATION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 outb(0x10, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x7F, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_B_DATA_DIRECTION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);




 outb(APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x9, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_C_DATA_DIRECTION,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x0E, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 outw(0x0, devpriv->i_IobaseAddon + APCI1500_DIGITAL_OP);






 outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR1_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR2_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(APCI1500_RW_CPT_TMR3_CMD_STATUS,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
 return 0;
}
