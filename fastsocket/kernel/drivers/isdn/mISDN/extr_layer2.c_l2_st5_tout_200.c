
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {scalar_t__ rc; scalar_t__ N200; int flag; int T200; int t200; scalar_t__ tm; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int CMD ;
 int EV_L2_T200 ;
 int FLG_DCHAN_BUSY ;
 int FLG_LAPB ;
 int FLG_LAPD ;
 int FLG_MOD128 ;
 int FLG_T200_RUN ;
 int MDL_ERROR_IND ;
 int MDL_STATUS_DOWN_IND ;
 int PH_DEACTIVATE_REQ ;
 int SABM ;
 int SABME ;
 int ST_L2_4 ;
 int l2_newid (struct layer2*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int l2down_create (struct layer2*,int ,int ,int ,int *) ;
 int l2mgr (struct layer2*,int ,void*) ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int send_uframe (struct layer2*,int *,int,int ) ;
 int skb_queue_purge (int *) ;
 int st5_dl_release_l2l3 (struct layer2*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st5_tout_200(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 if (test_bit(FLG_LAPD, &l2->flag) &&
  test_bit(FLG_DCHAN_BUSY, &l2->flag)) {
  mISDN_FsmAddTimer(&l2->t200, l2->T200, EV_L2_T200, ((void*)0), 9);
 } else if (l2->rc == l2->N200) {
  mISDN_FsmChangeState(fi, ST_L2_4);
  test_and_clear_bit(FLG_T200_RUN, &l2->flag);
  skb_queue_purge(&l2->i_queue);
  l2mgr(l2, MDL_ERROR_IND, (void *) 'G');
  if (test_bit(FLG_LAPB, &l2->flag))
   l2down_create(l2, PH_DEACTIVATE_REQ,
    l2_newid(l2), 0, ((void*)0));
  st5_dl_release_l2l3(l2);
  if (l2->tm)
   l2_tei(l2, MDL_STATUS_DOWN_IND, 0);
 } else {
  l2->rc++;
  mISDN_FsmAddTimer(&l2->t200, l2->T200, EV_L2_T200, ((void*)0), 9);
  send_uframe(l2, ((void*)0), (test_bit(FLG_MOD128, &l2->flag) ?
   SABME : SABM) | 0x10, CMD);
 }
}
