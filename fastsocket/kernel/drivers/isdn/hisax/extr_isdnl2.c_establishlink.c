
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int flag; int t203; scalar_t__ rc; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CMD ;
 int FLG_MOD128 ;
 int FLG_PEND_REL ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int SABM ;
 int SABME ;
 int ST_L2_5 ;
 int clear_exception (TYPE_1__*) ;
 int freewin (struct PStack*) ;
 int restart_t200 (struct PStack*,int) ;
 int send_uframe (struct PStack*,int,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
establishlink(struct FsmInst *fi)
{
 struct PStack *st = fi->userdata;
 u_char cmd;

 clear_exception(&st->l2);
 st->l2.rc = 0;
 cmd = (test_bit(FLG_MOD128, &st->l2.flag) ? SABME : SABM) | 0x10;
 send_uframe(st, cmd, CMD);
 FsmDelTimer(&st->l2.t203, 1);
 restart_t200(st, 1);
 test_and_clear_bit(FLG_PEND_REL, &st->l2.flag);
 freewin(st);
 FsmChangeState(fi, ST_L2_5);
}
