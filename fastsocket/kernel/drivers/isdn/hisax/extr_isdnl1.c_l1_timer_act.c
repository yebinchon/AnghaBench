
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hardware; int Flags; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L1_ACTIVATED ;
 int FLG_L1_ACTTIMER ;
 int L1activated (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l1_timer_act(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 test_and_clear_bit(FLG_L1_ACTTIMER, &st->l1.Flags);
 test_and_set_bit(FLG_L1_ACTIVATED, &st->l1.Flags);
 L1activated(st->l1.hardware);
}
