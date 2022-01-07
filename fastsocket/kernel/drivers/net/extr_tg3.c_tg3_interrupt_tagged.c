
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3_napi {scalar_t__ last_irq_tag; size_t rx_rcb_ptr; int napi; int * rx_rcb; struct tg3_hw_status* hw_status; struct tg3* tp; } ;
struct tg3_hw_status {scalar_t__ status_tag; } ;
struct tg3 {int dummy; } ;
typedef int irqreturn_t ;


 int CHIP_RESETTING ;
 int IRQ_RETVAL (unsigned int) ;
 scalar_t__ MAILBOX_INTERRUPT_0 ;
 int PCISTATE_INT_NOT_ACTIVE ;
 int TG3PCI_PCISTATE ;
 scalar_t__ TG3_64BIT_REG_LOW ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 scalar_t__ tg3_irq_sync (struct tg3*) ;
 int tr32 (int ) ;
 int tw32_mailbox_f (scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t tg3_interrupt_tagged(int irq, void *dev_id)
{
 struct tg3_napi *tnapi = dev_id;
 struct tg3 *tp = tnapi->tp;
 struct tg3_hw_status *sblk = tnapi->hw_status;
 unsigned int handled = 1;






 if (unlikely(sblk->status_tag == tnapi->last_irq_tag)) {
  if (tg3_flag(tp, CHIP_RESETTING) ||
      (tr32(TG3PCI_PCISTATE) & PCISTATE_INT_NOT_ACTIVE)) {
   handled = 0;
   goto out;
  }
 }
 tw32_mailbox_f(MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW, 0x00000001);







 tnapi->last_irq_tag = sblk->status_tag;

 if (tg3_irq_sync(tp))
  goto out;

 prefetch(&tnapi->rx_rcb[tnapi->rx_rcb_ptr]);

 napi_schedule(&tnapi->napi);

out:
 return IRQ_RETVAL(handled);
}
