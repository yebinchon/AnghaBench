
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1hw ) (struct PStack*,int,int *) ;int Flags; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L1_ACTIVATING ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int HW_ENABLE ;
 int REQUEST ;
 int ST_L1_F3 ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l1_deact_cnf(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L1_F3);
 if (test_bit(FLG_L1_ACTIVATING, &st->l1.Flags))
  st->l1.l1hw(st, HW_ENABLE | REQUEST, ((void*)0));
}
