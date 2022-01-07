
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iopoll {int state; } ;


 int IOPOLL_F_DISABLE ;
 int IOPOLL_F_SCHED ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void blk_iopoll_disable(struct blk_iopoll *iop)
{
 set_bit(IOPOLL_F_DISABLE, &iop->state);
 while (test_and_set_bit(IOPOLL_F_SCHED, &iop->state))
  msleep(1);
 clear_bit(IOPOLL_F_DISABLE, &iop->state);
}
