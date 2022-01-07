
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t200; int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_T200_RUN ;
 int FsmDelTimer (int *,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void
stop_t200(struct PStack *st, int i)
{
 if(test_and_clear_bit(FLG_T200_RUN, &st->l2.flag))
  FsmDelTimer(&st->l2.t200, i);
}
