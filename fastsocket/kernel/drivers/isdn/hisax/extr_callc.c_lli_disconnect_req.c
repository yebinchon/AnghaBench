
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {TYPE_4__* proc; TYPE_3__* d_st; scalar_t__ leased; } ;
struct TYPE_5__ {int cause; } ;
struct TYPE_8__ {TYPE_1__ para; } ;
struct TYPE_6__ {int (* l4l3 ) (TYPE_3__*,int,TYPE_4__*) ;} ;
struct TYPE_7__ {TYPE_2__ lli; } ;


 int CC_DISCONNECT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int ST_WAIT_DRELEASE ;
 int lli_leased_hup (struct FsmInst*,struct Channel*) ;
 int stub1 (TYPE_3__*,int,TYPE_4__*) ;

__attribute__((used)) static void
lli_disconnect_req(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_leased_hup(fi, chanp);
 } else {
  FsmChangeState(fi, ST_WAIT_DRELEASE);
  if (chanp->proc)
   chanp->proc->para.cause = 0x10;
  chanp->d_st->lli.l4l3(chanp->d_st, CC_DISCONNECT | REQUEST,
   chanp->proc);
 }
}
