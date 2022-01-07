
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fib {int size; int * callback_data; int * callback; int flags; TYPE_2__* hw_fib_va; int type; struct fib* next; } ;
struct aac_dev {int fib_lock; struct fib* free_fib; } ;
struct TYPE_3__ {scalar_t__ XferState; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int FSAFS_NTC_FIB_CONTEXT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct fib *aac_fib_alloc(struct aac_dev *dev)
{
 struct fib * fibptr;
 unsigned long flags;
 spin_lock_irqsave(&dev->fib_lock, flags);
 fibptr = dev->free_fib;
 if(!fibptr){
  spin_unlock_irqrestore(&dev->fib_lock, flags);
  return fibptr;
 }
 dev->free_fib = fibptr->next;
 spin_unlock_irqrestore(&dev->fib_lock, flags);



 fibptr->type = FSAFS_NTC_FIB_CONTEXT;
 fibptr->size = sizeof(struct fib);




 fibptr->hw_fib_va->header.XferState = 0;
 fibptr->flags = 0;
 fibptr->callback = ((void*)0);
 fibptr->callback_data = ((void*)0);

 return fibptr;
}
