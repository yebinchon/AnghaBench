
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int proc; TYPE_2__* d_st; } ;
struct TYPE_3__ {int (* l4l3 ) (TYPE_2__*,int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ lli; } ;


 int CC_SETUP ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int RESPONSE ;
 int ST_IN_WAIT_CONN_ACK ;
 int stub1 (TYPE_2__*,int,int ) ;

__attribute__((used)) static void
lli_send_dconnect(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 FsmChangeState(fi, ST_IN_WAIT_CONN_ACK);
 chanp->d_st->lli.l4l3(chanp->d_st, CC_SETUP | RESPONSE, chanp->proc);
}
