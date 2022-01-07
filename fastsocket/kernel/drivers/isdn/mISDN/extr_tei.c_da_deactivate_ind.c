
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {int dummy; } ;


 int ST_L1_DEACT ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;

__attribute__((used)) static void
da_deactivate_ind(struct FsmInst *fi, int event, void *arg)
{
 mISDN_FsmChangeState(fi, ST_L1_DEACT);
}
