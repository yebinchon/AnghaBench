
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {TYPE_2__* b_st; scalar_t__ data_open; } ;
struct TYPE_3__ {int (* l4l3 ) (TYPE_2__*,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ lli; } ;


 int DL_RELEASE ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int ST_WAIT_BREL_DISC ;
 int stub1 (TYPE_2__*,int,int *) ;

__attribute__((used)) static void
lli_release_bchan(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 chanp->data_open = 0;
 FsmChangeState(fi, ST_WAIT_BREL_DISC);
 chanp->b_st->lli.l4l3(chanp->b_st, DL_RELEASE | REQUEST, ((void*)0));
}
