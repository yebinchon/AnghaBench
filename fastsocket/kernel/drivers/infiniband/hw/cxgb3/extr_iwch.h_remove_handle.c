
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_dev {int lock; } ;
struct idr {int dummy; } ;


 int idr_remove (struct idr*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void remove_handle(struct iwch_dev *rhp, struct idr *idr, u32 id)
{
 spin_lock_irq(&rhp->lock);
 idr_remove(idr, id);
 spin_unlock_irq(&rhp->lock);
}
