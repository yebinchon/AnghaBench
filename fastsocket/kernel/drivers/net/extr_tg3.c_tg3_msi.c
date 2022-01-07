
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3_napi {size_t rx_rcb_ptr; int napi; int int_mbox; int * rx_rcb; int * hw_status; struct tg3* tp; } ;
struct tg3 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;
 int tg3_irq_sync (struct tg3*) ;
 int tw32_mailbox (int ,int) ;

__attribute__((used)) static irqreturn_t tg3_msi(int irq, void *dev_id)
{
 struct tg3_napi *tnapi = dev_id;
 struct tg3 *tp = tnapi->tp;

 prefetch(tnapi->hw_status);
 if (tnapi->rx_rcb)
  prefetch(&tnapi->rx_rcb[tnapi->rx_rcb_ptr]);







 tw32_mailbox(tnapi->int_mbox, 0x00000001);
 if (likely(!tg3_irq_sync(tp)))
  napi_schedule(&tnapi->napi);

 return IRQ_RETVAL(1);
}
