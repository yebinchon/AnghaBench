
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1hw ) (struct PStack*,int,int *) ;int Flags; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L1_UINT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int HW_INFO3 ;
 int REQUEST ;
 int ST_L1_F6 ;
 int ST_L1_SYNC2 ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l1_info2_ind(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;






  FsmChangeState(fi, ST_L1_F6);
 st->l1.l1hw(st, HW_INFO3 | REQUEST, ((void*)0));
}
