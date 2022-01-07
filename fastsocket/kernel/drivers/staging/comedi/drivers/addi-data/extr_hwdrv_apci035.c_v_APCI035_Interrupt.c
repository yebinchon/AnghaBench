
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ui_StatusRegister1 ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int tsk_Current; scalar_t__ iobase; } ;


 int SIGIO ;
 TYPE_1__* devpriv ;
 int i_Flag ;
 int i_Temp ;
 int i_WatchdogNbr ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int send_sig (int ,int ,int ) ;

__attribute__((used)) static void v_APCI035_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int ui_StatusRegister1 = 0;
 unsigned int ui_StatusRegister2 = 0;
 unsigned int ui_ReadCommand = 0;
 unsigned int ui_ChannelNumber = 0;
 unsigned int ui_DigitalTemperature = 0;
 if (i_Temp == 1) {
  i_WatchdogNbr = i_Flag;
  i_Flag = i_Flag + 1;
 }



 ui_StatusRegister1 = inl(devpriv->iobase + 128 + 16);




 ui_StatusRegister2 =
  inl(devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 20);

 if ((((ui_StatusRegister1) & 0x8) == 0x8))
 {



  ui_ReadCommand = inl(devpriv->iobase + 128 + 12);
  ui_ReadCommand = ui_ReadCommand & 0xFFDF0000UL;
  outl(ui_ReadCommand, devpriv->iobase + 128 + 12);



  ui_ChannelNumber = inl(devpriv->iobase + 128 + 60);



  ui_DigitalTemperature = inl(devpriv->iobase + 128 + 60);
  send_sig(SIGIO, devpriv->tsk_Current, 0);
 }

 else {
  if ((ui_StatusRegister2 & 0x1) == 0x1) {
   send_sig(SIGIO, devpriv->tsk_Current, 0);
  }
 }

 return;
}
