
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int CONFIRM ;
 int DL_RELEASE ;
 int FLG_PEND_REL ;
 int INDICATION ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void
st5_dl_release_l2l3(struct PStack *st)
{
  int pr;

  if(test_and_clear_bit(FLG_PEND_REL, &st->l2.flag))
   pr = DL_RELEASE | CONFIRM;
  else
   pr = DL_RELEASE | INDICATION;

  st->l2.l2l3(st, pr, ((void*)0));
}
