
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adapter {int flags; int pdev_dev; TYPE_3__** port; TYPE_2__* pdev; TYPE_1__* msix_info; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int vec; int desc; } ;


 int CXGB4_STATE_UP ;
 int FULL_INIT_DONE ;
 int IRQF_SHARED ;
 int USING_MSI ;
 int USING_MSIX ;
 int dev_err (int ,char*,int) ;
 int enable_rx (struct adapter*) ;
 int free_irq (int ,struct adapter*) ;
 int name_msix_vecs (struct adapter*) ;
 int notify_ulds (struct adapter*,int ) ;
 int request_irq (int ,int ,int ,int ,struct adapter*) ;
 int request_msix_queue_irqs (struct adapter*) ;
 int setup_rss (struct adapter*) ;
 int setup_sge_queues (struct adapter*) ;
 int t4_free_sge_resources (struct adapter*) ;
 int t4_intr_enable (struct adapter*) ;
 int t4_intr_handler (struct adapter*) ;
 int t4_nondata_intr ;
 int t4_sge_start (struct adapter*) ;

__attribute__((used)) static int cxgb_up(struct adapter *adap)
{
 int err;

 err = setup_sge_queues(adap);
 if (err)
  goto out;
 err = setup_rss(adap);
 if (err)
  goto freeq;

 if (adap->flags & USING_MSIX) {
  name_msix_vecs(adap);
  err = request_irq(adap->msix_info[0].vec, t4_nondata_intr, 0,
      adap->msix_info[0].desc, adap);
  if (err)
   goto irq_err;

  err = request_msix_queue_irqs(adap);
  if (err) {
   free_irq(adap->msix_info[0].vec, adap);
   goto irq_err;
  }
 } else {
  err = request_irq(adap->pdev->irq, t4_intr_handler(adap),
      (adap->flags & USING_MSI) ? 0 : IRQF_SHARED,
      adap->port[0]->name, adap);
  if (err)
   goto irq_err;
 }
 enable_rx(adap);
 t4_sge_start(adap);
 t4_intr_enable(adap);
 adap->flags |= FULL_INIT_DONE;
 notify_ulds(adap, CXGB4_STATE_UP);
 out:
 return err;
 irq_err:
 dev_err(adap->pdev_dev, "request_irq failed, err %d\n", err);
 freeq:
 t4_free_sge_resources(adap);
 goto out;
}
