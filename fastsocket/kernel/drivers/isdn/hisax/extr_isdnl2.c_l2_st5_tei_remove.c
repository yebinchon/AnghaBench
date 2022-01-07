
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tei; int ui_queue; int i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L2_1 ;
 int freewin (struct PStack*) ;
 int skb_queue_purge (int *) ;
 int st5_dl_release_l2l3 (struct PStack*) ;
 int stop_t200 (struct PStack*,int) ;

__attribute__((used)) static void
l2_st5_tei_remove(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.i_queue);
 skb_queue_purge(&st->l2.ui_queue);
 freewin(st);
 st->l2.tei = -1;
 stop_t200(st, 17);
 st5_dl_release_l2l3(st);
 FsmChangeState(fi, ST_L2_1);
}
