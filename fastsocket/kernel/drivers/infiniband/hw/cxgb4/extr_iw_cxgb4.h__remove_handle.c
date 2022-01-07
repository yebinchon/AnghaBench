
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
struct c4iw_dev {int lock; } ;


 int idr_remove (struct idr*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void _remove_handle(struct c4iw_dev *rhp, struct idr *idr,
       u32 id, int lock)
{
 if (lock)
  spin_lock_irq(&rhp->lock);
 idr_remove(idr, id);
 if (lock)
  spin_unlock_irq(&rhp->lock);
}
