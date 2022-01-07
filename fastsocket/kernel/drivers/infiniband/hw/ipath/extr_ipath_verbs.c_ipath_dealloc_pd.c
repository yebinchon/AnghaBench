
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_pd {int dummy; } ;
struct ipath_ibdev {int n_pds_lock; int n_pds_allocated; } ;
struct ib_pd {int device; } ;


 int kfree (struct ipath_pd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ipath_ibdev* to_idev (int ) ;
 struct ipath_pd* to_ipd (struct ib_pd*) ;

__attribute__((used)) static int ipath_dealloc_pd(struct ib_pd *ibpd)
{
 struct ipath_pd *pd = to_ipd(ibpd);
 struct ipath_ibdev *dev = to_idev(ibpd->device);

 spin_lock(&dev->n_pds_lock);
 dev->n_pds_allocated--;
 spin_unlock(&dev->n_pds_lock);

 kfree(pd);

 return 0;
}
