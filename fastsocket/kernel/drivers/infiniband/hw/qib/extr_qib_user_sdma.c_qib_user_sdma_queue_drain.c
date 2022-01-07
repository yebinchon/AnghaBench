
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int lock; int sent; } ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int QIB_USER_SDMA_DRAIN_TIMEOUT ;
 scalar_t__ list_empty (int *) ;
 int list_splice_init (int *,struct list_head*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_user_sdma_free_pkt_list (int *,struct qib_user_sdma_queue*,struct list_head*) ;
 int qib_user_sdma_hwqueue_clean (struct qib_pportdata*) ;
 int qib_user_sdma_queue_clean (struct qib_pportdata*,struct qib_user_sdma_queue*) ;

void qib_user_sdma_queue_drain(struct qib_pportdata *ppd,
          struct qib_user_sdma_queue *pq)
{
 struct qib_devdata *dd = ppd->dd;
 int i;

 if (!pq)
  return;

 for (i = 0; i < QIB_USER_SDMA_DRAIN_TIMEOUT; i++) {
  mutex_lock(&pq->lock);
  if (list_empty(&pq->sent)) {
   mutex_unlock(&pq->lock);
   break;
  }
  qib_user_sdma_hwqueue_clean(ppd);
  qib_user_sdma_queue_clean(ppd, pq);
  mutex_unlock(&pq->lock);
  msleep(10);
 }

 if (!list_empty(&pq->sent)) {
  struct list_head free_list;

  qib_dev_err(dd, "user sdma lists not empty: forcing!\n");
  INIT_LIST_HEAD(&free_list);
  mutex_lock(&pq->lock);
  list_splice_init(&pq->sent, &free_list);
  qib_user_sdma_free_pkt_list(&dd->pcidev->dev, pq, &free_list);
  mutex_unlock(&pq->lock);
 }
}
