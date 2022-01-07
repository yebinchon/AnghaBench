
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int proc; TYPE_2__* d_st; scalar_t__ leased; } ;
struct TYPE_3__ {int (* l4l3 ) (TYPE_2__*,int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ lli; } ;


 int CC_RELEASE ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int ST_WAIT_D_REL_CNF ;
 int lli_leased_hup (struct FsmInst*,struct Channel*) ;
 int stub1 (TYPE_2__*,int,int ) ;

__attribute__((used)) static void
lli_release_req(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_leased_hup(fi, chanp);
 } else {
  FsmChangeState(fi, ST_WAIT_D_REL_CNF);
  chanp->d_st->lli.l4l3(chanp->d_st, CC_RELEASE | REQUEST,
   chanp->proc);
 }
}
