
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {scalar_t__ chan; TYPE_1__* cs; scalar_t__ Flags; } ;
struct TYPE_2__ {int (* cardmsg ) (TYPE_1__*,int ,void*) ;} ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int MDL_INFO_REL ;
 int ST_NULL ;
 int stub1 (TYPE_1__*,int ,void*) ;

__attribute__((used)) static inline void
lli_close(struct FsmInst *fi)
{
 struct Channel *chanp = fi->userdata;

 FsmChangeState(fi, ST_NULL);
 chanp->Flags = 0;
 chanp->cs->cardmsg(chanp->cs, MDL_INFO_REL, (void *) (long)chanp->chan);
}
