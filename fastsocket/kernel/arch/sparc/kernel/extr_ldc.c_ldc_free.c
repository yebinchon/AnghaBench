
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_irq; int rx_irq; } ;
struct ldc_channel {int flags; struct ldc_channel* mssbuf; int list; int rx_base; int rx_num_entries; int tx_base; int tx_num_entries; int id; TYPE_1__ cfg; } ;


 int LDC_FLAG_ALLOCED_QUEUES ;
 int LDC_FLAG_REGISTERED_IRQS ;
 int LDC_FLAG_REGISTERED_QUEUES ;
 int free_irq (int ,struct ldc_channel*) ;
 int free_queue (int ,int ) ;
 int hlist_del (int *) ;
 int kfree (struct ldc_channel*) ;
 int ldc_iommu_release (struct ldc_channel*) ;
 int sun4v_ldc_rx_qconf (int ,int ,int ) ;
 int sun4v_ldc_tx_qconf (int ,int ,int ) ;

void ldc_free(struct ldc_channel *lp)
{
 if (lp->flags & LDC_FLAG_REGISTERED_IRQS) {
  free_irq(lp->cfg.rx_irq, lp);
  free_irq(lp->cfg.tx_irq, lp);
 }

 if (lp->flags & LDC_FLAG_REGISTERED_QUEUES) {
  sun4v_ldc_tx_qconf(lp->id, 0, 0);
  sun4v_ldc_rx_qconf(lp->id, 0, 0);
  lp->flags &= ~LDC_FLAG_REGISTERED_QUEUES;
 }
 if (lp->flags & LDC_FLAG_ALLOCED_QUEUES) {
  free_queue(lp->tx_num_entries, lp->tx_base);
  free_queue(lp->rx_num_entries, lp->rx_base);
  lp->flags &= ~LDC_FLAG_ALLOCED_QUEUES;
 }

 hlist_del(&lp->list);

 kfree(lp->mssbuf);

 ldc_iommu_release(lp);

 kfree(lp);
}
