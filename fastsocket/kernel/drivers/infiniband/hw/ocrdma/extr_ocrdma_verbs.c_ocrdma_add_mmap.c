
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocrdma_ucontext {int mm_list_lock; int mm_head; } ;
struct TYPE_2__ {unsigned long len; int phy_addr; } ;
struct ocrdma_mm {int entry; TYPE_1__ key; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ocrdma_mm* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ocrdma_add_mmap(struct ocrdma_ucontext *uctx, u64 phy_addr,
      unsigned long len)
{
 struct ocrdma_mm *mm;

 mm = kzalloc(sizeof(*mm), GFP_KERNEL);
 if (mm == ((void*)0))
  return -ENOMEM;
 mm->key.phy_addr = phy_addr;
 mm->key.len = len;
 INIT_LIST_HEAD(&mm->entry);

 mutex_lock(&uctx->mm_list_lock);
 list_add_tail(&mm->entry, &uctx->mm_head);
 mutex_unlock(&uctx->mm_list_lock);
 return 0;
}
