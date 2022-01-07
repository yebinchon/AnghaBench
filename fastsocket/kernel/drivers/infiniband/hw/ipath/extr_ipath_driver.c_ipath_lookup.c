
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 struct ipath_devdata* __ipath_lookup (int) ;
 int ipath_devs_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ipath_devdata *ipath_lookup(int unit)
{
 struct ipath_devdata *dd;
 unsigned long flags;

 spin_lock_irqsave(&ipath_devs_lock, flags);
 dd = __ipath_lookup(unit);
 spin_unlock_irqrestore(&ipath_devs_lock, flags);

 return dd;
}
