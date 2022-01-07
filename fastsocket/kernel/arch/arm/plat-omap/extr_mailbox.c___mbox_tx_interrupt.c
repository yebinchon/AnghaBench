
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* txq; } ;
struct TYPE_2__ {int work; } ;


 int IRQ_TX ;
 int ack_mbox_irq (struct omap_mbox*,int ) ;
 int disable_mbox_irq (struct omap_mbox*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void __mbox_tx_interrupt(struct omap_mbox *mbox)
{
 disable_mbox_irq(mbox, IRQ_TX);
 ack_mbox_irq(mbox, IRQ_TX);
 schedule_work(&mbox->txq->work);
}
