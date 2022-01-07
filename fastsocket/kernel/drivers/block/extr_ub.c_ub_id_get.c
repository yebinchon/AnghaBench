
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UB_MAX_HOSTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int* ub_hostv ;
 int ub_lock ;

__attribute__((used)) static int ub_id_get(void)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&ub_lock, flags);
 for (i = 0; i < UB_MAX_HOSTS; i++) {
  if (ub_hostv[i] == 0) {
   ub_hostv[i] = 1;
   spin_unlock_irqrestore(&ub_lock, flags);
   return i;
  }
 }
 spin_unlock_irqrestore(&ub_lock, flags);
 return -1;
}
