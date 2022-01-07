
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ibdev {scalar_t__ n_ahs_allocated; int n_ahs_lock; } ;
struct ib_ah {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct qib_ah {struct ib_ah ibah; int refcount; struct ib_ah_attr attr; } ;
struct ib_pd {int device; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_ah* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int atomic_set (int *,int ) ;
 scalar_t__ ib_qib_max_ahs ;
 int kfree (struct qib_ah*) ;
 struct qib_ah* kmalloc (int,int ) ;
 scalar_t__ qib_check_ah (int ,struct ib_ah_attr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ibdev* to_idev (int ) ;

__attribute__((used)) static struct ib_ah *qib_create_ah(struct ib_pd *pd,
       struct ib_ah_attr *ah_attr)
{
 struct qib_ah *ah;
 struct ib_ah *ret;
 struct qib_ibdev *dev = to_idev(pd->device);
 unsigned long flags;

 if (qib_check_ah(pd->device, ah_attr)) {
  ret = ERR_PTR(-EINVAL);
  goto bail;
 }

 ah = kmalloc(sizeof *ah, GFP_ATOMIC);
 if (!ah) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 if (dev->n_ahs_allocated == ib_qib_max_ahs) {
  spin_unlock_irqrestore(&dev->n_ahs_lock, flags);
  kfree(ah);
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 dev->n_ahs_allocated++;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);


 ah->attr = *ah_attr;
 atomic_set(&ah->refcount, 0);

 ret = &ah->ibah;

bail:
 return ret;
}
