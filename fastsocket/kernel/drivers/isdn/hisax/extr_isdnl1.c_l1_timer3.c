
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {int (* l1hw ) (struct PStack*,int,int *) ;TYPE_1__ l1m; int Flags; int hardware; } ;
struct PStack {TYPE_2__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L1_ACTIVATING ;
 int FLG_L1_T3RUN ;
 int FLG_L1_UINT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int HW_ENABLE ;
 int L1deactivated (int ) ;
 int REQUEST ;
 int ST_L1_F3 ;
 scalar_t__ ST_L1_F6 ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
l1_timer3(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 test_and_clear_bit(FLG_L1_T3RUN, &st->l1.Flags);
 if (test_and_clear_bit(FLG_L1_ACTIVATING, &st->l1.Flags))
  L1deactivated(st->l1.hardware);




 if (st->l1.l1m.state != ST_L1_F6) {
  FsmChangeState(fi, ST_L1_F3);
  st->l1.l1hw(st, HW_ENABLE | REQUEST, ((void*)0));
 }
}
