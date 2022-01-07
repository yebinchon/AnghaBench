
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct procdata {scalar_t__ if_used; int rd_queue; int del_lock; struct log_data* log_head; struct log_data* log_tail; } ;
struct log_data {scalar_t__ usage_cnt; struct log_data* next; struct procdata* proc_ctrl; int log_start; } ;
struct TYPE_3__ {int hysdn_lock; struct procdata* proclog; } ;
typedef TYPE_1__ hysdn_card ;


 int GFP_ATOMIC ;
 int kfree (struct log_data*) ;
 struct log_data* kmalloc (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
put_log_buffer(hysdn_card * card, char *cp)
{
 struct log_data *ib;
 struct procdata *pd = card->proclog;
 int i;
 unsigned long flags;

 if (!pd)
  return;
 if (!cp)
  return;
 if (!*cp)
  return;
 if (pd->if_used <= 0)
  return;

 if (!(ib = kmalloc(sizeof(struct log_data) + strlen(cp), GFP_ATOMIC)))
   return;
 strcpy(ib->log_start, cp);
 ib->next = ((void*)0);
 ib->proc_ctrl = pd;
 spin_lock_irqsave(&card->hysdn_lock, flags);
 ib->usage_cnt = pd->if_used;
 if (!pd->log_head)
  pd->log_head = ib;
 else
  pd->log_tail->next = ib;
 pd->log_tail = ib;
 i = pd->del_lock++;
 spin_unlock_irqrestore(&card->hysdn_lock, flags);


 if (!i)
  while (pd->log_head->next) {
   if ((pd->log_head->usage_cnt <= 0) &&
       (pd->log_head->next->usage_cnt <= 0)) {
    ib = pd->log_head;
    pd->log_head = pd->log_head->next;
    kfree(ib);
   } else
    break;
  }
 pd->del_lock--;
 wake_up_interruptible(&(pd->rd_queue));
}
