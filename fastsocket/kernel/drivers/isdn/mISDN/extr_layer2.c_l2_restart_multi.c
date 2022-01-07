
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ vs; scalar_t__ va; int i_queue; int T203; int t203; scalar_t__ sow; scalar_t__ vr; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_ESTABLISH_IND ;
 int EV_L2_ACK_PULL ;
 int EV_L2_T203 ;
 int MDL_ERROR_IND ;
 int RSP ;
 int ST_L2_7 ;
 int UA ;
 scalar_t__ cansend (struct layer2*) ;
 int clear_exception (struct layer2*) ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;
 int l2mgr (struct layer2*,int ,void*) ;
 int l2up_create (struct layer2*,int ,int ,int *) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmEvent (struct FsmInst*,int ,int *) ;
 int mISDN_FsmRestartTimer (int *,int ,int ,int *,int) ;
 int send_uframe (struct layer2*,struct sk_buff*,int,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int stop_t200 (struct layer2*,int) ;

__attribute__((used)) static void
l2_restart_multi(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;
 int est = 0;

 send_uframe(l2, skb, UA | get_PollFlag(l2, skb), RSP);

 l2mgr(l2, MDL_ERROR_IND, (void *) 'F');

 if (l2->vs != l2->va) {
  skb_queue_purge(&l2->i_queue);
  est = 1;
 }

 clear_exception(l2);
 l2->vs = 0;
 l2->va = 0;
 l2->vr = 0;
 l2->sow = 0;
 mISDN_FsmChangeState(fi, ST_L2_7);
 stop_t200(l2, 3);
 mISDN_FsmRestartTimer(&l2->t203, l2->T203, EV_L2_T203, ((void*)0), 3);

 if (est)
  l2up_create(l2, DL_ESTABLISH_IND, 0, ((void*)0));




 if (skb_queue_len(&l2->i_queue) && cansend(l2))
  mISDN_FsmEvent(fi, EV_L2_ACK_PULL, ((void*)0));
}
