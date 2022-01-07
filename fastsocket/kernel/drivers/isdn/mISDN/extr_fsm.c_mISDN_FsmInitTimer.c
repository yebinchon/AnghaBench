
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long data; void* function; } ;
struct FsmTimer {TYPE_1__ tl; struct FsmInst* fi; } ;
struct FsmInst {int (* printdebug ) (struct FsmInst*,char*,long) ;scalar_t__ debug; } ;


 scalar_t__ FsmExpireTimer ;
 int init_timer (TYPE_1__*) ;
 int stub1 (struct FsmInst*,char*,long) ;

void
mISDN_FsmInitTimer(struct FsmInst *fi, struct FsmTimer *ft)
{
 ft->fi = fi;
 ft->tl.function = (void *) FsmExpireTimer;
 ft->tl.data = (long) ft;




 init_timer(&ft->tl);
}
