
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
typedef TYPE_1__* pdabusb_t ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ list_empty (struct list_head*) ;
 int list_move_tail (struct list_head*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dabusb_add_buf_tail (pdabusb_t s, struct list_head *dst, struct list_head *src)
{
 unsigned long flags;
 struct list_head *tmp;
 int ret = 0;

 spin_lock_irqsave (&s->lock, flags);

 if (list_empty (src)) {

  ret = -1;
  goto err;
 }
 tmp = src->next;
 list_move_tail (tmp, dst);

  err: spin_unlock_irqrestore (&s->lock, flags);
 return ret;
}
