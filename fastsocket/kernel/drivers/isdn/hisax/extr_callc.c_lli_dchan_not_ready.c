
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {struct Channel* userdata; } ;
struct Channel {int debug; } ;


 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_DHUP ;
 int link_debug (struct Channel*,int ,char*) ;

__attribute__((used)) static void
lli_dchan_not_ready(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_DHUP");
 HL_LL(chanp, ISDN_STAT_DHUP);
}
