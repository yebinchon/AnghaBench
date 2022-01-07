
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* (* v2_dumb_mmap ) (char*,int,unsigned int,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;


 int prom_lock ;
 int restore_current () ;
 TYPE_2__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 char* stub1 (char*,int,unsigned int,unsigned int) ;

char *
prom_mapio(char *vhint, int ios, unsigned int paddr, unsigned int num_bytes)
{
 unsigned long flags;
 char *ret;

 spin_lock_irqsave(&prom_lock, flags);
 if((num_bytes == 0) || (paddr == 0)) ret = (char *) 0x0;
 else
 ret = (*(romvec->pv_v2devops.v2_dumb_mmap))(vhint, ios, paddr,
          num_bytes);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return ret;
}
