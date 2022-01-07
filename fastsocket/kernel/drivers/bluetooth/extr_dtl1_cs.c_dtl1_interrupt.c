
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_8__ {unsigned char ri_latch; int lock; int tx_state; TYPE_2__* p_dev; int hdev; } ;
typedef TYPE_3__ dtl1_info_t ;
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
 scalar_t__ UART_MSR ;
 unsigned char UART_MSR_RI ;
 int XMIT_WAITING ;
 int clear_bit (int ,int *) ;
 int dtl1_receive (TYPE_3__*) ;
 int dtl1_write_wakeup (TYPE_3__*) ;
 int inb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t dtl1_interrupt(int irq, void *dev_inst)
{
 dtl1_info_t *info = dev_inst;
 unsigned int iobase;
 unsigned char msr;
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

   dtl1_receive(info);
   break;
  case 128:
   if (lsr & UART_LSR_THRE) {

    dtl1_write_wakeup(info);
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

 msr = inb(iobase + UART_MSR);

 if (info->ri_latch ^ (msr & UART_MSR_RI)) {
  info->ri_latch = msr & UART_MSR_RI;
  clear_bit(XMIT_WAITING, &(info->tx_state));
  dtl1_write_wakeup(info);
  r = IRQ_HANDLED;
 }

 spin_unlock(&(info->lock));

 return r;
}
