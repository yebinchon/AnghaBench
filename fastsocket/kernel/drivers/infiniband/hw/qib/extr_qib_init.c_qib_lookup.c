
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 struct qib_devdata* __qib_lookup (int) ;
 int qib_devs_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct qib_devdata *qib_lookup(int unit)
{
 struct qib_devdata *dd;
 unsigned long flags;

 spin_lock_irqsave(&qib_devs_lock, flags);
 dd = __qib_lookup(unit);
 spin_unlock_irqrestore(&qib_devs_lock, flags);

 return dd;
}
