
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_ibdev {int n_cqs_lock; int n_cqs_allocated; } ;
struct qib_cq {int queue; TYPE_1__* ip; int comptask; } ;
struct ib_cq {int device; } ;
struct TYPE_2__ {int ref; } ;


 int flush_work (int *) ;
 int kfree (struct qib_cq*) ;
 int kref_put (int *,int ) ;
 int qib_release_mmap_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_cq* to_icq (struct ib_cq*) ;
 struct qib_ibdev* to_idev (int ) ;
 int vfree (int ) ;

int qib_destroy_cq(struct ib_cq *ibcq)
{
 struct qib_ibdev *dev = to_idev(ibcq->device);
 struct qib_cq *cq = to_icq(ibcq);

 flush_work(&cq->comptask);
 spin_lock(&dev->n_cqs_lock);
 dev->n_cqs_allocated--;
 spin_unlock(&dev->n_cqs_lock);
 if (cq->ip)
  kref_put(&cq->ip->ref, qib_release_mmap_info);
 else
  vfree(cq->queue);
 kfree(cq);

 return 0;
}
