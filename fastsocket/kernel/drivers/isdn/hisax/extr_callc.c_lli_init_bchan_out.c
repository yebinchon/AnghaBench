
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int debug; TYPE_2__* b_st; } ;
struct TYPE_3__ {int (* l4l3 ) (TYPE_2__*,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ lli; } ;


 int DL_ESTABLISH ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_DCONN ;
 int REQUEST ;
 int ST_WAIT_BCONN ;
 int init_b_st (struct Channel*,int ) ;
 int link_debug (struct Channel*,int ,char*) ;
 int stub1 (TYPE_2__*,int,int *) ;

__attribute__((used)) static void
lli_init_bchan_out(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 FsmChangeState(fi, ST_WAIT_BCONN);
 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_DCONN");
 HL_LL(chanp, ISDN_STAT_DCONN);
 init_b_st(chanp, 0);
 chanp->b_st->lli.l4l3(chanp->b_st, DL_ESTABLISH | REQUEST, ((void*)0));
}
