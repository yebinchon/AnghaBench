
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {struct Channel* userdata; } ;
struct Channel {scalar_t__ leased; } ;


 int lli_disconnect_req (struct FsmInst*,int,void*) ;
 int lli_leased_hup (struct FsmInst*,struct Channel*) ;

__attribute__((used)) static void
lli_start_disc(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_leased_hup(fi, chanp);
 } else {
  lli_disconnect_req(fi, event, arg);
 }
}
