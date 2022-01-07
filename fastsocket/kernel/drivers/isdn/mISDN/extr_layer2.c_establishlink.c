
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct layer2 {int flag; int t203; scalar_t__ rc; } ;
struct FsmInst {struct layer2* userdata; } ;


 int CMD ;
 int FLG_MOD128 ;
 int FLG_PEND_REL ;
 int SABM ;
 int SABME ;
 int ST_L2_5 ;
 int clear_exception (struct layer2*) ;
 int freewin (struct layer2*) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int restart_t200 (struct layer2*,int) ;
 int send_uframe (struct layer2*,int *,int,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
establishlink(struct FsmInst *fi)
{
 struct layer2 *l2 = fi->userdata;
 u_char cmd;

 clear_exception(l2);
 l2->rc = 0;
 cmd = (test_bit(FLG_MOD128, &l2->flag) ? SABME : SABM) | 0x10;
 send_uframe(l2, ((void*)0), cmd, CMD);
 mISDN_FsmDelTimer(&l2->t203, 1);
 restart_t200(l2, 1);
 test_and_clear_bit(FLG_PEND_REL, &l2->flag);
 freewin(l2);
 mISDN_FsmChangeState(fi, ST_L2_5);
}
