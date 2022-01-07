
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int ui_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int MDL_ASSIGN_IND ;
 int ST_L2_2 ;
 int l2_tei (struct layer2*,int ,int ) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void
l2_queue_ui_assign(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_tail(&l2->ui_queue, skb);
 mISDN_FsmChangeState(fi, ST_L2_2);
 l2_tei(l2, MDL_ASSIGN_IND, 0);
}
