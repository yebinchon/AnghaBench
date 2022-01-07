
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qib_user_sdma_queue {int counter; int lock; } ;
struct qib_pportdata {scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_removed; } ;
struct qib_devdata {TYPE_2__* pcidev; } ;
struct qib_ctxtdata {struct qib_pportdata* ppd; struct qib_devdata* dd; } ;
struct list_head {int dummy; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int mmap_sem; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 TYPE_3__* current ;
 int down_write (int *) ;
 int list_empty (struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qib_sdma_descq_freecnt (struct qib_pportdata*) ;
 int qib_sdma_running (struct qib_pportdata*) ;
 int qib_user_sdma_free_pkt_list (int *,struct qib_user_sdma_queue*,struct list_head*) ;
 int qib_user_sdma_hwqueue_clean (struct qib_pportdata*) ;
 int qib_user_sdma_push_pkts (struct qib_pportdata*,struct qib_user_sdma_queue*,struct list_head*) ;
 int qib_user_sdma_queue_clean (struct qib_pportdata*,struct qib_user_sdma_queue*) ;
 int qib_user_sdma_queue_pkts (struct qib_devdata*,struct qib_user_sdma_queue*,struct list_head*,struct iovec const*,unsigned long,int const) ;
 int up_write (int *) ;

int qib_user_sdma_writev(struct qib_ctxtdata *rcd,
    struct qib_user_sdma_queue *pq,
    const struct iovec *iov,
    unsigned long dim)
{
 struct qib_devdata *dd = rcd->dd;
 struct qib_pportdata *ppd = rcd->ppd;
 int ret = 0;
 struct list_head list;
 int npkts = 0;

 INIT_LIST_HEAD(&list);

 mutex_lock(&pq->lock);


 if (!qib_sdma_running(ppd))
  goto done_unlock;

 if (ppd->sdma_descq_added != ppd->sdma_descq_removed) {
  qib_user_sdma_hwqueue_clean(ppd);
  qib_user_sdma_queue_clean(ppd, pq);
 }

 while (dim) {
  const int mxp = 8;

  down_write(&current->mm->mmap_sem);
  ret = qib_user_sdma_queue_pkts(dd, pq, &list, iov, dim, mxp);
  up_write(&current->mm->mmap_sem);

  if (ret <= 0)
   goto done_unlock;
  else {
   dim -= ret;
   iov += ret;
  }


  if (!list_empty(&list)) {





   if (qib_sdma_descq_freecnt(ppd) < ret * 4) {
    qib_user_sdma_hwqueue_clean(ppd);
    qib_user_sdma_queue_clean(ppd, pq);
   }

   ret = qib_user_sdma_push_pkts(ppd, pq, &list);
   if (ret < 0)
    goto done_unlock;
   else {
    npkts += ret;
    pq->counter += ret;

    if (!list_empty(&list))
     goto done_unlock;
   }
  }
 }

done_unlock:
 if (!list_empty(&list))
  qib_user_sdma_free_pkt_list(&dd->pcidev->dev, pq, &list);
 mutex_unlock(&pq->lock);

 return (ret < 0) ? ret : npkts;
}
