
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int flag; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_L3_INIT ;
 int FLG_LAPB ;
 int MDL_STATUS_DOWN_IND ;
 int PH_DEACTIVATE_REQ ;
 int ST_L2_4 ;
 scalar_t__ get_PollFlagFree (struct layer2*,struct sk_buff*) ;
 int l2_newid (struct layer2*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int l2down_create (struct layer2*,int ,int ,int ,int *) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int skb_queue_purge (int *) ;
 int st5_dl_release_l2l3 (struct layer2*) ;
 int stop_t200 (struct layer2*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st5_dm_release(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 if (get_PollFlagFree(l2, skb)) {
  stop_t200(l2, 7);
  if (!test_bit(FLG_L3_INIT, &l2->flag))
   skb_queue_purge(&l2->i_queue);
  if (test_bit(FLG_LAPB, &l2->flag))
   l2down_create(l2, PH_DEACTIVATE_REQ,
    l2_newid(l2), 0, ((void*)0));
  st5_dl_release_l2l3(l2);
  mISDN_FsmChangeState(fi, ST_L2_4);
  if (l2->tm)
   l2_tei(l2, MDL_STATUS_DOWN_IND, 0);
 }
}
