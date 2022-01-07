
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {struct Channel* userdata; } ;
struct Channel {int debug; scalar_t__ data_open; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_BHUP ;
 int ST_WAIT_DCOMMAND ;
 int link_debug (struct Channel*,int ,char*) ;
 int release_b_st (struct Channel*) ;

__attribute__((used)) static void
lli_bhup_rel_b(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 FsmChangeState(fi, ST_WAIT_DCOMMAND);
 chanp->data_open = 0;
 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_BHUP");
 HL_LL(chanp, ISDN_STAT_BHUP);
 release_b_st(chanp);
}
