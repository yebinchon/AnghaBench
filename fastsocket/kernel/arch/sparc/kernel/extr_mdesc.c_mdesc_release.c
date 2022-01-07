
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdesc_handle {TYPE_1__* mops; int list; int refcnt; } ;
struct TYPE_2__ {int (* free ) (struct mdesc_handle*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int list_del_init (int *) ;
 int mdesc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mdesc_handle*) ;

void mdesc_release(struct mdesc_handle *hp)
{
 unsigned long flags;

 spin_lock_irqsave(&mdesc_lock, flags);
 if (atomic_dec_and_test(&hp->refcnt)) {
  list_del_init(&hp->list);
  hp->mops->free(hp);
 }
 spin_unlock_irqrestore(&mdesc_lock, flags);
}
