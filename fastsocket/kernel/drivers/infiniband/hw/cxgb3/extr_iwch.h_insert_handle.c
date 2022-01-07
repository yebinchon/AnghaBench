
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_dev {int lock; } ;
struct idr {int dummy; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int idr_get_new_above (struct idr*,void*,int,int*) ;
 int idr_pre_get (struct idr*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline int insert_handle(struct iwch_dev *rhp, struct idr *idr,
    void *handle, u32 id)
{
 int ret;
 int newid;

 do {
  if (!idr_pre_get(idr, GFP_KERNEL)) {
   return -ENOMEM;
  }
  spin_lock_irq(&rhp->lock);
  ret = idr_get_new_above(idr, handle, id, &newid);
  BUG_ON(newid != id);
  spin_unlock_irq(&rhp->lock);
 } while (ret == -EAGAIN);

 return ret;
}
