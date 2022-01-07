
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_struc {struct call_struc* next; int timer; } ;


 int del_timer (int *) ;
 struct call_struc* divert_head ;
 int divert_lock ;
 int kfree (struct call_struc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void deleteprocs(void)
{ struct call_struc *cs, *cs1;
  unsigned long flags;

  spin_lock_irqsave(&divert_lock, flags);
  cs = divert_head;
  divert_head = ((void*)0);
  while (cs)
   { del_timer(&cs->timer);
     cs1 = cs;
     cs = cs->next;
     kfree(cs1);
   }
  spin_unlock_irqrestore(&divert_lock, flags);
}
