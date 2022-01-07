
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int i_queue; int t203; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int INDICATION ;
 int RSP ;
 int ST_L2_4 ;
 int UA ;
 int freewin (struct PStack*) ;
 int get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int lapb_dl_release_l2l3 (struct PStack*,int ) ;
 int send_uframe (struct PStack*,int,int ) ;
 int skb_queue_purge (int *) ;
 int stop_t200 (struct PStack*,int) ;

__attribute__((used)) static void
l2_stop_multi(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 FsmChangeState(fi, ST_L2_4);
 FsmDelTimer(&st->l2.t203, 3);
 stop_t200(st, 4);

 send_uframe(st, UA | get_PollFlagFree(st, skb), RSP);

 skb_queue_purge(&st->l2.i_queue);
 freewin(st);
 lapb_dl_release_l2l3(st, INDICATION);
}
