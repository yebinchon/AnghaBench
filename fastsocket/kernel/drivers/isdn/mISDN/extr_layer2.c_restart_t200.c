
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; int T200; int t200; } ;


 int EV_L2_T200 ;
 int FLG_T200_RUN ;
 int mISDN_FsmRestartTimer (int *,int ,int ,int *,int) ;
 int test_and_set_bit (int ,int *) ;

inline void
restart_t200(struct layer2 *l2, int i)
{
 mISDN_FsmRestartTimer(&l2->t200, l2->T200, EV_L2_T200, ((void*)0), i);
 test_and_set_bit(FLG_T200_RUN, &l2->flag);
}
