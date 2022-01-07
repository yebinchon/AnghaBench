
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {struct Channel* userdata; } ;
struct Channel {int debug; scalar_t__ leased; } ;


 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_DHUP ;
 int link_debug (struct Channel*,int ,char*) ;
 int lli_close (struct FsmInst*) ;
 int lli_deliver_cause (struct Channel*) ;
 int lli_leased_hup (struct FsmInst*,struct Channel*) ;

__attribute__((used)) static void
lli_dhup_close(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_leased_hup(fi, chanp);
 } else {
  if (chanp->debug & 1)
   link_debug(chanp, 0, "STAT_DHUP");
  lli_deliver_cause(chanp);
  HL_LL(chanp, ISDN_STAT_DHUP);
  lli_close(fi);
 }
}
