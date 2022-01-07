
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wq; } ;
struct ipath_srq {TYPE_1__ rq; TYPE_2__* ip; } ;
struct ipath_ibdev {int n_srqs_lock; int n_srqs_allocated; } ;
struct ib_srq {int device; } ;
struct TYPE_4__ {int ref; } ;


 int ipath_release_mmap_info ;
 int kfree (struct ipath_srq*) ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ipath_ibdev* to_idev (int ) ;
 struct ipath_srq* to_isrq (struct ib_srq*) ;
 int vfree (int ) ;

int ipath_destroy_srq(struct ib_srq *ibsrq)
{
 struct ipath_srq *srq = to_isrq(ibsrq);
 struct ipath_ibdev *dev = to_idev(ibsrq->device);

 spin_lock(&dev->n_srqs_lock);
 dev->n_srqs_allocated--;
 spin_unlock(&dev->n_srqs_lock);
 if (srq->ip)
  kref_put(&srq->ip->ref, ipath_release_mmap_info);
 else
  vfree(srq->rq.wq);
 kfree(srq);

 return 0;
}
