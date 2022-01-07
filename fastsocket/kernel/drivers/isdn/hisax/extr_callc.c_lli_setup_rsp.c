
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int proc; TYPE_2__* d_st; scalar_t__ leased; } ;
struct TYPE_4__ {int (* l4l3 ) (TYPE_2__*,int,int ) ;} ;
struct TYPE_5__ {TYPE_1__ lli; } ;


 int CC_ALERTING ;
 int CC_SETUP ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int RESPONSE ;
 int ST_IN_WAIT_CONN_ACK ;
 int lli_init_bchan_in (struct FsmInst*,int,void*) ;
 int stub1 (TYPE_2__*,int,int ) ;
 int stub2 (TYPE_2__*,int,int ) ;

__attribute__((used)) static void
lli_setup_rsp(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_init_bchan_in(fi, event, arg);
 } else {
  FsmChangeState(fi, ST_IN_WAIT_CONN_ACK);



  chanp->d_st->lli.l4l3(chanp->d_st, CC_SETUP | RESPONSE, chanp->proc);
 }
}
