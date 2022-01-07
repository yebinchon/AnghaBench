
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct divert_info {scalar_t__ usage_cnt; struct divert_info* next; int info_start; } ;


 int GFP_ATOMIC ;
 struct divert_info* divert_info_head ;
 int divert_info_lock ;
 struct divert_info* divert_info_tail ;
 scalar_t__ if_used ;
 int kfree (struct divert_info*) ;
 struct divert_info* kmalloc (scalar_t__,int ) ;
 int rd_queue ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 int wake_up_interruptible (int *) ;

void
put_info_buffer(char *cp)
{
 struct divert_info *ib;
 unsigned long flags;

 if (if_used <= 0)
  return;
 if (!cp)
  return;
 if (!*cp)
  return;
 if (!(ib = kmalloc(sizeof(struct divert_info) + strlen(cp), GFP_ATOMIC)))
   return;
 strcpy(ib->info_start, cp);
 ib->next = ((void*)0);
 spin_lock_irqsave( &divert_info_lock, flags );
 ib->usage_cnt = if_used;
 if (!divert_info_head)
  divert_info_head = ib;
 else
  divert_info_tail->next = ib;
 divert_info_tail = ib;


 while (divert_info_head->next) {
  if ((divert_info_head->usage_cnt <= 0) &&
      (divert_info_head->next->usage_cnt <= 0)) {
   ib = divert_info_head;
   divert_info_head = divert_info_head->next;
   kfree(ib);
  } else
   break;
 }
 spin_unlock_irqrestore( &divert_info_lock, flags );
 wake_up_interruptible(&(rd_queue));
}
