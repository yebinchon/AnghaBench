
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iopoll {int state; int list; } ;


 int IOPOLL_F_SCHED ;
 int clear_bit_unlock (int ,int *) ;
 int list_del (int *) ;
 int smp_mb__before_clear_bit () ;

void __blk_iopoll_complete(struct blk_iopoll *iop)
{
 list_del(&iop->list);
 smp_mb__before_clear_bit();
 clear_bit_unlock(IOPOLL_F_SCHED, &iop->state);
}
