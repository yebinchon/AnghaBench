
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* ops; int irq; int rxq; int txq; } ;
struct TYPE_2__ {int (* shutdown ) (struct omap_mbox*) ;} ;


 int free_irq (int ,struct omap_mbox*) ;
 int mbox_queue_free (int ) ;
 int stub1 (struct omap_mbox*) ;
 scalar_t__ unlikely (int (*) (struct omap_mbox*)) ;

__attribute__((used)) static void omap_mbox_fini(struct omap_mbox *mbox)
{
 mbox_queue_free(mbox->txq);
 mbox_queue_free(mbox->rxq);

 free_irq(mbox->irq, mbox);

 if (unlikely(mbox->ops->shutdown))
  mbox->ops->shutdown(mbox);
}
