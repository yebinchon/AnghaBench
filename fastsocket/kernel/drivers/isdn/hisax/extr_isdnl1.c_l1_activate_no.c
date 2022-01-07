
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hardware; int Flags; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L1_ACTIVATING ;
 int FLG_L1_DEACTTIMER ;
 int FLG_L1_T3RUN ;
 int L1deactivated (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
l1_activate_no(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if ((!test_bit(FLG_L1_DEACTTIMER, &st->l1.Flags)) && (!test_bit(FLG_L1_T3RUN, &st->l1.Flags))) {
  test_and_clear_bit(FLG_L1_ACTIVATING, &st->l1.Flags);
  L1deactivated(st->l1.hardware);
 }
}
