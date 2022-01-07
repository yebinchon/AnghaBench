
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3_napi {size_t rx_rcb_ptr; int napi; int * rx_rcb; struct tg3_hw_status* hw_status; struct tg3* tp; } ;
struct tg3_hw_status {int status; } ;
struct tg3 {int dummy; } ;
typedef int irqreturn_t ;


 int CHIP_RESETTING ;
 int IRQ_RETVAL (unsigned int) ;
 scalar_t__ MAILBOX_INTERRUPT_0 ;
 int PCISTATE_INT_NOT_ACTIVE ;
 int SD_STATUS_UPDATED ;
 int TG3PCI_PCISTATE ;
 scalar_t__ TG3_64BIT_REG_LOW ;
 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_has_work (struct tg3_napi*) ;
 scalar_t__ tg3_irq_sync (struct tg3*) ;
 int tr32 (int ) ;
 int tw32_mailbox_f (scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t tg3_interrupt(int irq, void *dev_id)
{
 struct tg3_napi *tnapi = dev_id;
 struct tg3 *tp = tnapi->tp;
 struct tg3_hw_status *sblk = tnapi->hw_status;
 unsigned int handled = 1;






 if (unlikely(!(sblk->status & SD_STATUS_UPDATED))) {
  if (tg3_flag(tp, CHIP_RESETTING) ||
      (tr32(TG3PCI_PCISTATE) & PCISTATE_INT_NOT_ACTIVE)) {
   handled = 0;
   goto out;
  }
 }
 tw32_mailbox_f(MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW, 0x00000001);
 if (tg3_irq_sync(tp))
  goto out;
 sblk->status &= ~SD_STATUS_UPDATED;
 if (likely(tg3_has_work(tnapi))) {
  prefetch(&tnapi->rx_rcb[tnapi->rx_rcb_ptr]);
  napi_schedule(&tnapi->napi);
 } else {



  tw32_mailbox_f(MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW,
          0x00000000);
 }
out:
 return IRQ_RETVAL(handled);
}
