
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iopoll {int weight; int state; int * poll; int list; } ;
typedef int blk_iopoll_fn ;


 int INIT_LIST_HEAD (int *) ;
 int IOPOLL_F_SCHED ;
 int memset (struct blk_iopoll*,int ,int) ;
 int set_bit (int ,int *) ;

void blk_iopoll_init(struct blk_iopoll *iop, int weight, blk_iopoll_fn *poll_fn)
{
 memset(iop, 0, sizeof(*iop));
 INIT_LIST_HEAD(&iop->list);
 iop->weight = weight;
 iop->poll = poll_fn;
 set_bit(IOPOLL_F_SCHED, &iop->state);
}
