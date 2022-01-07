
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int t200; int flag; } ;


 int FLG_T200_RUN ;
 int mISDN_FsmDelTimer (int *,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

inline void
stop_t200(struct layer2 *l2, int i)
{
 if (test_and_clear_bit(FLG_T200_RUN, &l2->flag))
  mISDN_FsmDelTimer(&l2->t200, i);
}
