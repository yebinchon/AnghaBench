
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int tsk_Current; void* b_TimerSelectMode; scalar_t__ i_IobaseAmcc; } ;


 void* ADDIDATA_COUNTER ;
 void* ADDIDATA_TIMER ;
 scalar_t__ APCI1564_COUNTER1 ;
 scalar_t__ APCI1564_COUNTER2 ;
 scalar_t__ APCI1564_COUNTER3 ;
 scalar_t__ APCI1564_COUNTER4 ;
 scalar_t__ APCI1564_DIGITAL_IP ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_STATUS ;
 scalar_t__ APCI1564_DIGITAL_IP_IRQ ;
 scalar_t__ APCI1564_DIGITAL_OP ;
 scalar_t__ APCI1564_DIGITAL_OP_INTERRUPT ;
 scalar_t__ APCI1564_DIGITAL_OP_INTERRUPT_STATUS ;
 scalar_t__ APCI1564_DIGITAL_OP_IRQ ;
 scalar_t__ APCI1564_TCW_IRQ ;
 scalar_t__ APCI1564_TCW_PROG ;
 scalar_t__ APCI1564_TIMER ;
 int SIGIO ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*) ;
 int send_sig (int ,int ,int ) ;
 int ui_InterruptStatus_1564 ;
 int ui_Type ;

__attribute__((used)) static void v_APCI1564_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int ui_DO, ui_DI;
 unsigned int ui_Timer;
 unsigned int ui_C1, ui_C2, ui_C3, ui_C4;
 unsigned int ul_Command2 = 0;
 ui_DI = inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
  APCI1564_DIGITAL_IP_IRQ) & 0x01;
 ui_DO = inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP +
  APCI1564_DIGITAL_OP_IRQ) & 0x01;
 ui_Timer =
  inl(devpriv->i_IobaseAmcc + APCI1564_TIMER +
  APCI1564_TCW_IRQ) & 0x01;
 ui_C1 = inl(devpriv->iobase + APCI1564_COUNTER1 +
  APCI1564_TCW_IRQ) & 0x1;
 ui_C2 = inl(devpriv->iobase + APCI1564_COUNTER2 +
  APCI1564_TCW_IRQ) & 0x1;
 ui_C3 = inl(devpriv->iobase + APCI1564_COUNTER3 +
  APCI1564_TCW_IRQ) & 0x1;
 ui_C4 = inl(devpriv->iobase + APCI1564_COUNTER4 +
  APCI1564_TCW_IRQ) & 0x1;
 if (ui_DI == 0 && ui_DO == 0 && ui_Timer == 0 && ui_C1 == 0
  && ui_C2 == 0 && ui_C3 == 0 && ui_C4 == 0) {
  printk("\nInterrupt from unknown source\n");
 }

 if (ui_DI == 1) {
  ui_DI = inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_IRQ);
  outl(0x0,
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_IRQ);
  ui_InterruptStatus_1564 =
   inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_INTERRUPT_STATUS);
  ui_InterruptStatus_1564 = ui_InterruptStatus_1564 & 0X000FFFF0;
  send_sig(SIGIO, devpriv->tsk_Current, 0);
  outl(ui_DI, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP + APCI1564_DIGITAL_IP_IRQ);
  return;
 }

 if (ui_DO == 1) {

  ui_Type =
   inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP +
   APCI1564_DIGITAL_OP_INTERRUPT_STATUS) & 0x3;

  outl(0x0,
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP +
   APCI1564_DIGITAL_OP_INTERRUPT);


  send_sig(SIGIO, devpriv->tsk_Current, 0);

 }

 if (ui_Timer == 1) {
  devpriv->b_TimerSelectMode = ADDIDATA_TIMER;
  if (devpriv->b_TimerSelectMode) {


   ul_Command2 =
    inl(devpriv->i_IobaseAmcc + APCI1564_TIMER +
        APCI1564_TCW_PROG);
   outl(0x0,
        devpriv->i_IobaseAmcc + APCI1564_TIMER +
        APCI1564_TCW_PROG);


   send_sig(SIGIO, devpriv->tsk_Current, 0);



   outl(ul_Command2,
        devpriv->i_IobaseAmcc + APCI1564_TIMER +
        APCI1564_TCW_PROG);
  }
 }


 if (ui_C1 == 1) {
  devpriv->b_TimerSelectMode = ADDIDATA_COUNTER;
  if (devpriv->b_TimerSelectMode) {


   ul_Command2 =
    inl(devpriv->iobase + APCI1564_COUNTER1 +
        APCI1564_TCW_PROG);
   outl(0x0,
        devpriv->iobase + APCI1564_COUNTER1 +
        APCI1564_TCW_PROG);


   send_sig(SIGIO, devpriv->tsk_Current, 0);


   outl(ul_Command2,
        devpriv->iobase + APCI1564_COUNTER1 +
        APCI1564_TCW_PROG);
  }
 }

 if (ui_C2 == 1) {
  devpriv->b_TimerSelectMode = ADDIDATA_COUNTER;
  if (devpriv->b_TimerSelectMode) {


   ul_Command2 =
    inl(devpriv->iobase + APCI1564_COUNTER2 +
        APCI1564_TCW_PROG);
   outl(0x0,
        devpriv->iobase + APCI1564_COUNTER2 +
        APCI1564_TCW_PROG);


   send_sig(SIGIO, devpriv->tsk_Current, 0);


   outl(ul_Command2,
        devpriv->iobase + APCI1564_COUNTER2 +
        APCI1564_TCW_PROG);
  }
 }

 if (ui_C3 == 1) {
  devpriv->b_TimerSelectMode = ADDIDATA_COUNTER;
  if (devpriv->b_TimerSelectMode) {


   ul_Command2 =
    inl(devpriv->iobase + APCI1564_COUNTER3 +
        APCI1564_TCW_PROG);
   outl(0x0,
        devpriv->iobase + APCI1564_COUNTER3 +
        APCI1564_TCW_PROG);


   send_sig(SIGIO, devpriv->tsk_Current, 0);


   outl(ul_Command2,
        devpriv->iobase + APCI1564_COUNTER3 +
        APCI1564_TCW_PROG);
  }
 }

 if (ui_C4 == 1) {
  devpriv->b_TimerSelectMode = ADDIDATA_COUNTER;
  if (devpriv->b_TimerSelectMode) {


   ul_Command2 =
    inl(devpriv->iobase + APCI1564_COUNTER4 +
        APCI1564_TCW_PROG);
   outl(0x0,
        devpriv->iobase + APCI1564_COUNTER4 +
        APCI1564_TCW_PROG);


   send_sig(SIGIO, devpriv->tsk_Current, 0);


   outl(ul_Command2,
        devpriv->iobase + APCI1564_COUNTER4 +
        APCI1564_TCW_PROG);
  }
 }
 return;
}
