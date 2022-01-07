
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int tei; int ui_queue; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int GROUP_TEI ;
 int ST_L2_1 ;
 int freewin (struct layer2*) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int skb_queue_purge (int *) ;
 int st5_dl_release_l2l3 (struct layer2*) ;
 int stop_t200 (struct layer2*,int) ;

__attribute__((used)) static void
l2_st5_tei_remove(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 skb_queue_purge(&l2->i_queue);
 skb_queue_purge(&l2->ui_queue);
 freewin(l2);
 l2->tei = GROUP_TEI;
 stop_t200(l2, 17);
 st5_dl_release_l2l3(l2);
 mISDN_FsmChangeState(fi, ST_L2_1);
}
