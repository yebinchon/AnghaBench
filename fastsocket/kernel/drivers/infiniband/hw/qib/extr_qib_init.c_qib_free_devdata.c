
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ibdev; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int list; int unit; } ;


 int ib_dealloc_device (int *) ;
 int idr_remove (int *,int ) ;
 int list_del (int *) ;
 int qib_devs_lock ;
 int qib_unit_table ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qib_free_devdata(struct qib_devdata *dd)
{
 unsigned long flags;

 spin_lock_irqsave(&qib_devs_lock, flags);
 idr_remove(&qib_unit_table, dd->unit);
 list_del(&dd->list);
 spin_unlock_irqrestore(&qib_devs_lock, flags);

 ib_dealloc_device(&dd->verbs_dev.ibdev);
}
