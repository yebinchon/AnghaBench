
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {struct Channel* userdata; } ;
struct Channel {int dummy; } ;


 int lli_dhup_close (struct FsmInst*,int,void*) ;
 int release_b_st (struct Channel*) ;

__attribute__((used)) static void
lli_rel_b_dhup(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 release_b_st(chanp);
 lli_dhup_close(fi, event, arg);
}
