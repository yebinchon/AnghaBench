
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msn_entry {struct msn_entry* next; } ;
struct TYPE_3__ {int lock; struct msn_entry* msn_list; } ;
typedef TYPE_1__ act2000_card ;


 int kfree (struct msn_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
act2000_clear_msn(act2000_card *card)
{
 struct msn_entry *p = card->msn_list;
 struct msn_entry *q;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 card->msn_list = ((void*)0);
 spin_unlock_irqrestore(&card->lock, flags);
 while (p) {
  q = p->next;
  kfree(p);
  p = q;
 }
}
