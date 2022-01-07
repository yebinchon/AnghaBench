
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_8__ {int lock; TYPE_2__* p_dev; int hdev; } ;
typedef TYPE_3__ btuart_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {TYPE_1__ io; } ;


 int BT_ERR (char*,...) ;
 int BUG_ON (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ UART_IIR ;
 int UART_IIR_ID ;



 scalar_t__ UART_LSR ;
 int UART_LSR_THRE ;
 int btuart_receive (TYPE_3__*) ;
 int btuart_write_wakeup (TYPE_3__*) ;
 int inb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t btuart_interrupt(int irq, void *dev_inst)
{
 btuart_info_t *info = dev_inst;
 unsigned int iobase;
 int boguscount = 0;
 int iir, lsr;
 irqreturn_t r = IRQ_NONE;

 BUG_ON(!info->hdev);

 iobase = info->p_dev->io.BasePort1;

 spin_lock(&(info->lock));

 iir = inb(iobase + UART_IIR) & UART_IIR_ID;
 while (iir) {
  r = IRQ_HANDLED;


  lsr = inb(iobase + UART_LSR);

  switch (iir) {
  case 129:
   BT_ERR("RLSI");
   break;
  case 130:

   btuart_receive(info);
   break;
  case 128:
   if (lsr & UART_LSR_THRE) {

    btuart_write_wakeup(info);
   }
   break;
  default:
   BT_ERR("Unhandled IIR=%#x", iir);
   break;
  }


  if (boguscount++ > 100)
   break;

  iir = inb(iobase + UART_IIR) & UART_IIR_ID;

 }

 spin_unlock(&(info->lock));

 return r;
}
