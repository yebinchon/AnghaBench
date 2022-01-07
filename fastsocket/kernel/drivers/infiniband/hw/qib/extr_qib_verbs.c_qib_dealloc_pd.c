
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pd {int dummy; } ;
struct qib_ibdev {int n_pds_lock; int n_pds_allocated; } ;
struct ib_pd {int device; } ;


 int kfree (struct qib_pd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibdev* to_idev (int ) ;
 struct qib_pd* to_ipd (struct ib_pd*) ;

__attribute__((used)) static int qib_dealloc_pd(struct ib_pd *ibpd)
{
 struct qib_pd *pd = to_ipd(ibpd);
 struct qib_ibdev *dev = to_idev(ibpd->device);

 spin_lock(&dev->n_pds_lock);
 dev->n_pds_allocated--;
 spin_unlock(&dev->n_pds_lock);

 kfree(pd);

 return 0;
}
