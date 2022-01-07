
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef size_t u32 ;
struct qib_devdata {int* eep_st_new_errs; int eep_st_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qib_inc_eeprom_err(struct qib_devdata *dd, u32 eidx, u32 incr)
{
 uint new_val;
 unsigned long flags;

 spin_lock_irqsave(&dd->eep_st_lock, flags);
 new_val = dd->eep_st_new_errs[eidx] + incr;
 if (new_val > 255)
  new_val = 255;
 dd->eep_st_new_errs[eidx] = new_val;
 spin_unlock_irqrestore(&dd->eep_st_lock, flags);
}
