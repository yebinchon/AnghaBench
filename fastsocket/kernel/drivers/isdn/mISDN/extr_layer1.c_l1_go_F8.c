
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {int dummy; } ;


 int ST_L1_F8 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;

__attribute__((used)) static void
l1_go_F8(struct FsmInst *fi, int event, void *arg)
{
 mISDN_FsmChangeState(fi, ST_L1_F8);
}
