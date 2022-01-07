
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * fd_stdin; } ;
struct TYPE_4__ {int (* v2_dev_read ) (int ,char*,int) ;} ;
struct TYPE_6__ {int (* pv_nbgetchar ) () ;TYPE_2__ pv_v2bootargs; TYPE_1__ pv_v2devops; } ;





 int prom_lock ;
 int prom_vers ;
 int restore_current () ;
 TYPE_3__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 int stub2 (int ,char*,int) ;

int
prom_nbgetchar(void)
{
 static char inc;
 int i = -1;
 unsigned long flags;

 spin_lock_irqsave(&prom_lock, flags);
 switch(prom_vers) {
 case 130:
  i = (*(romvec->pv_nbgetchar))();
  break;
 case 129:
 case 128:
  if( (*(romvec->pv_v2devops).v2_dev_read)(*romvec->pv_v2bootargs.fd_stdin , &inc, 0x1) == 1) {
   i = inc;
  } else {
   i = -1;
  }
  break;
 default:
  i = -1;
  break;
 };
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return i;
}
