
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;int (* l2l1 ) (struct PStack*,int,int *) ;int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int DL_RELEASE ;
 int FLG_LAPB ;
 int PH_DEACTIVATE ;
 int REQUEST ;
 int stub1 (struct PStack*,int,int *) ;
 int stub2 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
lapb_dl_release_l2l3(struct PStack *st, int f)
{
  if (test_bit(FLG_LAPB, &st->l2.flag))
   st->l2.l2l1(st, PH_DEACTIVATE | REQUEST, ((void*)0));
  st->l2.l2l3(st, DL_RELEASE | f, ((void*)0));
}
