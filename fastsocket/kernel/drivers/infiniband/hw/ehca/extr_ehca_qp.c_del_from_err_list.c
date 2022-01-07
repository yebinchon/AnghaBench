
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ehca_cq {int spinlock; } ;


 int list_del_init (struct list_head*) ;
 int list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void del_from_err_list(struct ehca_cq *cq, struct list_head *node)
{
 unsigned long flags;

 spin_lock_irqsave(&cq->spinlock, flags);

 if (!list_empty(node))
  list_del_init(node);

 spin_unlock_irqrestore(&cq->spinlock, flags);
}
