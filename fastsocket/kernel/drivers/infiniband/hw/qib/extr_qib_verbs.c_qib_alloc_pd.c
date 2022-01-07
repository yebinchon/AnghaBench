
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int dummy; } ;
struct qib_pd {struct ib_pd ibpd; int user; } ;
struct qib_ibdev {scalar_t__ n_pds_allocated; int n_pds_lock; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct ib_pd* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ ib_qib_max_pds ;
 int kfree (struct qib_pd*) ;
 struct qib_pd* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static struct ib_pd *qib_alloc_pd(struct ib_device *ibdev,
      struct ib_ucontext *context,
      struct ib_udata *udata)
{
 struct qib_ibdev *dev = to_idev(ibdev);
 struct qib_pd *pd;
 struct ib_pd *ret;
 pd = kmalloc(sizeof *pd, GFP_KERNEL);
 if (!pd) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 spin_lock(&dev->n_pds_lock);
 if (dev->n_pds_allocated == ib_qib_max_pds) {
  spin_unlock(&dev->n_pds_lock);
  kfree(pd);
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 dev->n_pds_allocated++;
 spin_unlock(&dev->n_pds_lock);


 pd->user = udata != ((void*)0);

 ret = &pd->ibpd;

bail:
 return ret;
}
