
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int qid; int sw_sq; } ;
struct TYPE_7__ {int qid; int sw_rq; int rqt_size; int rqt_hwaddr; int queue; int memsize; } ;
struct t4_wq {TYPE_4__ sq; TYPE_3__ rq; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
struct c4iw_dev_ucontext {int dummy; } ;
struct TYPE_5__ {int dev; } ;


 int c4iw_put_qpid (struct c4iw_rdev*,int ,struct c4iw_dev_ucontext*) ;
 int c4iw_rqtpool_free (struct c4iw_rdev*,int ,int ) ;
 int dealloc_sq (struct c4iw_rdev*,TYPE_4__*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int mapping ;
 int pci_unmap_addr (TYPE_3__*,int ) ;

__attribute__((used)) static int destroy_qp(struct c4iw_rdev *rdev, struct t4_wq *wq,
        struct c4iw_dev_ucontext *uctx)
{




 dma_free_coherent(&(rdev->lldi.pdev->dev),
     wq->rq.memsize, wq->rq.queue,
     pci_unmap_addr(&wq->rq, mapping));
 dealloc_sq(rdev, &wq->sq);
 c4iw_rqtpool_free(rdev, wq->rq.rqt_hwaddr, wq->rq.rqt_size);
 kfree(wq->rq.sw_rq);
 kfree(wq->sq.sw_sq);
 c4iw_put_qpid(rdev, wq->rq.qid, uctx);
 c4iw_put_qpid(rdev, wq->sq.qid, uctx);
 return 0;
}
