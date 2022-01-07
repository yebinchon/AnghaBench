
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_user_sdma_queue {int lock; } ;
struct ipath_devdata {int dummy; } ;


 int ipath_user_sdma_hwqueue_clean (struct ipath_devdata*) ;
 int ipath_user_sdma_queue_clean (struct ipath_devdata*,struct ipath_user_sdma_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ipath_user_sdma_make_progress(struct ipath_devdata *dd,
      struct ipath_user_sdma_queue *pq)
{
 int ret = 0;

 mutex_lock(&pq->lock);
 ipath_user_sdma_hwqueue_clean(dd);
 ret = ipath_user_sdma_queue_clean(dd, pq);
 mutex_unlock(&pq->lock);

 return ret;
}
