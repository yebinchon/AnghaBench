
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ibdev {int n_ahs_lock; int n_ahs_allocated; } ;
struct qib_ah {int refcount; } ;
struct ib_ah {int device; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct qib_ah*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ah* to_iah (struct ib_ah*) ;
 struct qib_ibdev* to_idev (int ) ;

__attribute__((used)) static int qib_destroy_ah(struct ib_ah *ibah)
{
 struct qib_ibdev *dev = to_idev(ibah->device);
 struct qib_ah *ah = to_iah(ibah);
 unsigned long flags;

 if (atomic_read(&ah->refcount) != 0)
  return -EBUSY;

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 dev->n_ahs_allocated--;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);

 kfree(ah);

 return 0;
}
