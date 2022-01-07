
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnad {int cfg_flags; int mbox_irq_name; int run_flags; int bna_lock; TYPE_2__* pcidev; TYPE_1__* msix_table; } ;
typedef scalar_t__ irq_handler_t ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int BNAD_CF_MSIX ;
 size_t BNAD_MAILBOX_MSIX_INDEX ;
 char* BNAD_NAME ;
 int BNAD_RF_MBOX_IRQ_DISABLED ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 unsigned long IRQF_SHARED ;
 scalar_t__ bnad_isr ;
 scalar_t__ bnad_msix_mbox_handler ;
 int mbox_intr_disabled ;
 int request_irq (int ,scalar_t__,unsigned long,int ,struct bnad*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int
bnad_mbox_irq_alloc(struct bnad *bnad)
{
 int err = 0;
 unsigned long irq_flags, flags;
 u32 irq;
 irq_handler_t irq_handler;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (bnad->cfg_flags & BNAD_CF_MSIX) {
  irq_handler = (irq_handler_t)bnad_msix_mbox_handler;
  irq = bnad->msix_table[BNAD_MAILBOX_MSIX_INDEX].vector;
  irq_flags = 0;
 } else {
  irq_handler = (irq_handler_t)bnad_isr;
  irq = bnad->pcidev->irq;
  irq_flags = IRQF_SHARED;
 }

 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 sprintf(bnad->mbox_irq_name, "%s", BNAD_NAME);





 set_bit(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags);

 BNAD_UPDATE_CTR(bnad, mbox_intr_disabled);

 err = request_irq(irq, irq_handler, irq_flags,
     bnad->mbox_irq_name, bnad);

 return err;
}
