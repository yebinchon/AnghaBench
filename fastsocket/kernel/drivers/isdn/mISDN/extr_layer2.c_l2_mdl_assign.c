
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;
struct FsmInst {struct layer2* userdata; } ;


 int MDL_ASSIGN_IND ;
 int ST_L2_3 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;

__attribute__((used)) static void
l2_mdl_assign(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 mISDN_FsmChangeState(fi, ST_L2_3);
 dev_kfree_skb((struct sk_buff *)arg);
 l2_tei(l2, MDL_ASSIGN_IND, 0);
}
