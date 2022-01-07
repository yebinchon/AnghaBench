
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct ipath_user_sdma_queue {int counter; int lock; } ;
struct ipath_devdata {scalar_t__ ipath_sdma_descq_added; scalar_t__ ipath_sdma_descq_removed; TYPE_2__* pcidev; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int mmap_sem; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 TYPE_3__* current ;
 int down_write (int *) ;
 int ipath_sdma_descq_freecnt (struct ipath_devdata*) ;
 int ipath_user_sdma_free_pkt_list (int *,struct ipath_user_sdma_queue*,struct list_head*) ;
 int ipath_user_sdma_hwqueue_clean (struct ipath_devdata*) ;
 int ipath_user_sdma_push_pkts (struct ipath_devdata*,struct ipath_user_sdma_queue*,struct list_head*) ;
 int ipath_user_sdma_queue_clean (struct ipath_devdata*,struct ipath_user_sdma_queue*) ;
 int ipath_user_sdma_queue_pkts (struct ipath_devdata*,struct ipath_user_sdma_queue*,struct list_head*,struct iovec const*,unsigned long,int const) ;
 int list_empty (struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

int ipath_user_sdma_writev(struct ipath_devdata *dd,
      struct ipath_user_sdma_queue *pq,
      const struct iovec *iov,
      unsigned long dim)
{
 int ret = 0;
 struct list_head list;
 int npkts = 0;

 INIT_LIST_HEAD(&list);

 mutex_lock(&pq->lock);

 if (dd->ipath_sdma_descq_added != dd->ipath_sdma_descq_removed) {
  ipath_user_sdma_hwqueue_clean(dd);
  ipath_user_sdma_queue_clean(dd, pq);
 }

 while (dim) {
  const int mxp = 8;

  down_write(&current->mm->mmap_sem);
  ret = ipath_user_sdma_queue_pkts(dd, pq, &list, iov, dim, mxp);
  up_write(&current->mm->mmap_sem);

  if (ret <= 0)
   goto done_unlock;
  else {
   dim -= ret;
   iov += ret;
  }


  if (!list_empty(&list)) {





   if (ipath_sdma_descq_freecnt(dd) < ret * 4) {
    ipath_user_sdma_hwqueue_clean(dd);
    ipath_user_sdma_queue_clean(dd, pq);
   }

   ret = ipath_user_sdma_push_pkts(dd, pq, &list);
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
  ipath_user_sdma_free_pkt_list(&dd->pcidev->dev, pq, &list);
 mutex_unlock(&pq->lock);

 return (ret < 0) ? ret : npkts;
}
