
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int T200; int t200; } ;
struct PStack {TYPE_1__ l2; } ;


 int EV_L2_T200 ;
 int FLG_T200_RUN ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void
start_t200(struct PStack *st, int i)
{
 FsmAddTimer(&st->l2.t200, st->l2.T200, EV_L2_T200, ((void*)0), i);
 test_and_set_bit(FLG_T200_RUN, &st->l2.flag);
}
