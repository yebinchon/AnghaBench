
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 size_t UB_QLOCK_NUM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ub_lock ;
 size_t ub_qlock_next ;
 int * ub_qlockv ;

__attribute__((used)) static spinlock_t *ub_next_lock(void)
{
 unsigned long flags;
 spinlock_t *ret;

 spin_lock_irqsave(&ub_lock, flags);
 ret = &ub_qlockv[ub_qlock_next];
 ub_qlock_next = (ub_qlock_next + 1) % UB_QLOCK_NUM;
 spin_unlock_irqrestore(&ub_lock, flags);
 return ret;
}
