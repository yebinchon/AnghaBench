
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
struct c4iw_dev {int lock; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int idr_get_new_above (struct idr*,void*,int,int*) ;
 int idr_pre_get (struct idr*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline int _insert_handle(struct c4iw_dev *rhp, struct idr *idr,
     void *handle, u32 id, int lock)
{
 int ret;
 int newid;

 do {
  if (!idr_pre_get(idr, lock ? GFP_KERNEL : GFP_ATOMIC))
   return -ENOMEM;
  if (lock)
   spin_lock_irq(&rhp->lock);
  ret = idr_get_new_above(idr, handle, id, &newid);
  BUG_ON(!ret && newid != id);
  if (lock)
   spin_unlock_irq(&rhp->lock);
 } while (ret == -EAGAIN);

 return ret;
}
