
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iopoll {int state; } ;


 int BUG_ON (int) ;
 int IOPOLL_F_SCHED ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__before_clear_bit () ;
 int test_bit (int ,int *) ;

void blk_iopoll_enable(struct blk_iopoll *iop)
{
 BUG_ON(!test_bit(IOPOLL_F_SCHED, &iop->state));
 smp_mb__before_clear_bit();
 clear_bit_unlock(IOPOLL_F_SCHED, &iop->state);
}
