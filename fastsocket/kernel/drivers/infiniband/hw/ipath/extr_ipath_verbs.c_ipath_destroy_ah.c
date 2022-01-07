
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_ibdev {int n_ahs_lock; int n_ahs_allocated; } ;
struct ipath_ah {int dummy; } ;
struct ib_ah {int device; } ;


 int kfree (struct ipath_ah*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ah* to_iah (struct ib_ah*) ;
 struct ipath_ibdev* to_idev (int ) ;

__attribute__((used)) static int ipath_destroy_ah(struct ib_ah *ibah)
{
 struct ipath_ibdev *dev = to_idev(ibah->device);
 struct ipath_ah *ah = to_iah(ibah);
 unsigned long flags;

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 dev->n_ahs_allocated--;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);

 kfree(ah);

 return 0;
}
