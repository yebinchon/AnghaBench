
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct FsmTimer {int arg; int event; TYPE_1__* fi; } ;
struct TYPE_3__ {int (* printdebug ) (TYPE_1__*,char*,long) ;scalar_t__ debug; } ;


 int FsmEvent (TYPE_1__*,int ,int ) ;
 int stub1 (TYPE_1__*,char*,long) ;

__attribute__((used)) static void
FsmExpireTimer(struct FsmTimer *ft)
{




 FsmEvent(ft->fi, ft->event, ft->arg);
}
