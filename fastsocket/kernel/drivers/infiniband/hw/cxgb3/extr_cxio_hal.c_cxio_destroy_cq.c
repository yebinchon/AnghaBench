
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t3_cqe {int dummy; } ;
struct t3_cq {unsigned long size_log2; int cqid; int queue; int sw_queue; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct cxio_rdev {int rscp; TYPE_2__ rnic_info; } ;
struct TYPE_3__ {int dev; } ;


 int cxio_hal_clear_cq_ctx (struct cxio_rdev*,int ) ;
 int cxio_hal_put_cqid (int ,int ) ;
 int dma_free_coherent (int *,unsigned long,int ,int ) ;
 int kfree (int ) ;
 int mapping ;
 int pci_unmap_addr (struct t3_cq*,int ) ;

int cxio_destroy_cq(struct cxio_rdev *rdev_p, struct t3_cq *cq)
{
 int err;
 err = cxio_hal_clear_cq_ctx(rdev_p, cq->cqid);
 kfree(cq->sw_queue);
 dma_free_coherent(&(rdev_p->rnic_info.pdev->dev),
     (1UL << (cq->size_log2))
     * sizeof(struct t3_cqe), cq->queue,
     pci_unmap_addr(cq, mapping));
 cxio_hal_put_cqid(rdev_p->rscp, cq->cqid);
 return err;
}
