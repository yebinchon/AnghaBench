
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int list_del (struct list_head*) ;
 int list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ugeth_lock ;

__attribute__((used)) static struct list_head *dequeue(struct list_head *lh)
{
 unsigned long flags;

 spin_lock_irqsave(&ugeth_lock, flags);
 if (!list_empty(lh)) {
  struct list_head *node = lh->next;
  list_del(node);
  spin_unlock_irqrestore(&ugeth_lock, flags);
  return node;
 } else {
  spin_unlock_irqrestore(&ugeth_lock, flags);
  return ((void*)0);
 }
}
