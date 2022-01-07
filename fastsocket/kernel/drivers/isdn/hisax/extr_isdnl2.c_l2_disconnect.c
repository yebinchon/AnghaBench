
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t203; scalar_t__ rc; int i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CMD ;
 int DISC ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int ST_L2_6 ;
 int freewin (struct PStack*) ;
 int restart_t200 (struct PStack*,int) ;
 int send_uframe (struct PStack*,int,int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
l2_disconnect(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.i_queue);
 freewin(st);
 FsmChangeState(fi, ST_L2_6);
 st->l2.rc = 0;
 send_uframe(st, DISC | 0x10, CMD);
 FsmDelTimer(&st->l2.t203, 1);
 restart_t200(st, 2);
}
