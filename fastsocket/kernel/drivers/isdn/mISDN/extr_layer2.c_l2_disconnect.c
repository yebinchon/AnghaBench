
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int t203; scalar_t__ rc; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int CMD ;
 int DISC ;
 int ST_L2_6 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int freewin (struct layer2*) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int restart_t200 (struct layer2*,int) ;
 int send_uframe (struct layer2*,int *,int,int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
l2_disconnect(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_purge(&l2->i_queue);
 freewin(l2);
 mISDN_FsmChangeState(fi, ST_L2_6);
 l2->rc = 0;
 send_uframe(l2, ((void*)0), DISC | 0x10, CMD);
 mISDN_FsmDelTimer(&l2->t203, 1);
 restart_t200(l2, 2);
 if (skb)
  dev_kfree_skb(skb);
}
