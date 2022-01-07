
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* v2_dumb_munmap ) (char*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;


 int prom_lock ;
 int restore_current () ;
 TYPE_2__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (char*,unsigned int) ;

void
prom_unmapio(char *vaddr, unsigned int num_bytes)
{
 unsigned long flags;

 if(num_bytes == 0x0) return;
 spin_lock_irqsave(&prom_lock, flags);
 (*(romvec->pv_v2devops.v2_dumb_munmap))(vaddr, num_bytes);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return;
}
