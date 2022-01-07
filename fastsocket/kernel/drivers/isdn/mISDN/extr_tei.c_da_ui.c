
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manager {int datimer; int options; } ;
struct FsmInst {struct manager* userdata; } ;


 int DATIMER_VAL ;
 int EV_DATIMER ;
 int OPTION_L1_HOLD ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
da_ui(struct FsmInst *fi, int event, void *arg)
{
 struct manager *mgr = fi->userdata;


 if (!test_bit(OPTION_L1_HOLD, &mgr->options)) {
  mISDN_FsmDelTimer(&mgr->datimer, 2);
  mISDN_FsmAddTimer(&mgr->datimer, DATIMER_VAL, EV_DATIMER,
   ((void*)0), 2);
 }
}
