
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int qib_diag_trans_lock; struct diag_observer_list_elt* diag_observer_list; } ;
struct diag_observer_list_elt {struct diag_observer_list_elt* next; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (struct diag_observer_list_elt*) ;

__attribute__((used)) static void qib_unregister_observers(struct qib_devdata *dd)
{
 struct diag_observer_list_elt *olp;
 unsigned long flags;

 spin_lock_irqsave(&dd->qib_diag_trans_lock, flags);
 olp = dd->diag_observer_list;
 while (olp) {

  dd->diag_observer_list = olp->next;
  spin_unlock_irqrestore(&dd->qib_diag_trans_lock, flags);
  vfree(olp);

  spin_lock_irqsave(&dd->qib_diag_trans_lock, flags);
  olp = dd->diag_observer_list;
 }
 spin_unlock_irqrestore(&dd->qib_diag_trans_lock, flags);
}
