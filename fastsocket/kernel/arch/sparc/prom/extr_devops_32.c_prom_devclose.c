
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* v2_dev_close ) (int) ;} ;
struct TYPE_4__ {int (* v0_devclose ) (int) ;} ;
struct TYPE_6__ {TYPE_2__ pv_v2devops; TYPE_1__ pv_v0devops; } ;





 int prom_lock ;
 int prom_vers ;
 int restore_current () ;
 TYPE_3__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;
 int stub2 (int) ;

int
prom_devclose(int dhandle)
{
 unsigned long flags;
 spin_lock_irqsave(&prom_lock, flags);
 switch(prom_vers) {
 case 130:
  (*(romvec->pv_v0devops.v0_devclose))(dhandle);
  break;
 case 129:
 case 128:
  (*(romvec->pv_v2devops.v2_dev_close))(dhandle);
  break;
 default:
  break;
 };
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return 0;
}
