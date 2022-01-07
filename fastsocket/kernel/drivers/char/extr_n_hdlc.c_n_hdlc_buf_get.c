
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_hdlc_buf_list {int spinlock; int * tail; struct n_hdlc_buf* head; int count; } ;
struct n_hdlc_buf {struct n_hdlc_buf* link; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct n_hdlc_buf* n_hdlc_buf_get(struct n_hdlc_buf_list *list)
{
 unsigned long flags;
 struct n_hdlc_buf *buf;
 spin_lock_irqsave(&list->spinlock,flags);

 buf = list->head;
 if (buf) {
  list->head = buf->link;
  (list->count)--;
 }
 if (!list->head)
  list->tail = ((void*)0);

 spin_unlock_irqrestore(&list->spinlock,flags);
 return buf;

}
