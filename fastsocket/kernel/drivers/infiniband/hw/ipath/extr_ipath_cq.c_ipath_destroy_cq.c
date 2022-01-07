
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_ibdev {int n_cqs_lock; int n_cqs_allocated; } ;
struct ipath_cq {int queue; TYPE_1__* ip; int comptask; } ;
struct ib_cq {int device; } ;
struct TYPE_2__ {int ref; } ;


 int ipath_release_mmap_info ;
 int kfree (struct ipath_cq*) ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;
 struct ipath_cq* to_icq (struct ib_cq*) ;
 struct ipath_ibdev* to_idev (int ) ;
 int vfree (int ) ;

int ipath_destroy_cq(struct ib_cq *ibcq)
{
 struct ipath_ibdev *dev = to_idev(ibcq->device);
 struct ipath_cq *cq = to_icq(ibcq);

 tasklet_kill(&cq->comptask);
 spin_lock(&dev->n_cqs_lock);
 dev->n_cqs_allocated--;
 spin_unlock(&dev->n_cqs_lock);
 if (cq->ip)
  kref_put(&cq->ip->ref, ipath_release_mmap_info);
 else
  vfree(cq->queue);
 kfree(cq);

 return 0;
}
