
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_hdlc_buf_list {int spinlock; int count; struct n_hdlc_buf* tail; struct n_hdlc_buf* head; } ;
struct n_hdlc_buf {struct n_hdlc_buf* link; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void n_hdlc_buf_put(struct n_hdlc_buf_list *list,
      struct n_hdlc_buf *buf)
{
 unsigned long flags;
 spin_lock_irqsave(&list->spinlock,flags);

 buf->link=((void*)0);
 if (list->tail)
  list->tail->link = buf;
 else
  list->head = buf;
 list->tail = buf;
 (list->count)++;

 spin_unlock_irqrestore(&list->spinlock,flags);

}
