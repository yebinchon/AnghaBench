
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int num; } ;


 int EBUSY ;
 scalar_t__ QE_SNUM_STATE_FREE ;
 scalar_t__ QE_SNUM_STATE_USED ;
 int qe_lock ;
 int qe_num_of_snum ;
 TYPE_1__* snums ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qe_get_snum(void)
{
 unsigned long flags;
 int snum = -EBUSY;
 int i;

 spin_lock_irqsave(&qe_lock, flags);
 for (i = 0; i < qe_num_of_snum; i++) {
  if (snums[i].state == QE_SNUM_STATE_FREE) {
   snums[i].state = QE_SNUM_STATE_USED;
   snum = snums[i].num;
   break;
  }
 }
 spin_unlock_irqrestore(&qe_lock, flags);

 return snum;
}
