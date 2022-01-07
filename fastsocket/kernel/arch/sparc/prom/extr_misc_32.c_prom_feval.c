
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* v2_eval ) (char*) ;int (* v0_eval ) (int ,char*) ;} ;
struct TYPE_4__ {TYPE_1__ pv_fortheval; } ;


 scalar_t__ PROM_V0 ;
 int prom_lock ;
 scalar_t__ prom_vers ;
 int restore_current () ;
 TYPE_2__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlen (char*) ;
 int stub1 (int ,char*) ;
 int stub2 (char*) ;

void
prom_feval(char *fstring)
{
 unsigned long flags;
 if(!fstring || fstring[0] == 0)
  return;
 spin_lock_irqsave(&prom_lock, flags);
 if(prom_vers == PROM_V0)
  (*(romvec->pv_fortheval.v0_eval))(strlen(fstring), fstring);
 else
  (*(romvec->pv_fortheval.v2_eval))(fstring);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
}
