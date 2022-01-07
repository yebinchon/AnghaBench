
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct FsmInst {int state; TYPE_1__* fsm; int (* printdebug ) (struct FsmInst*,char*,int ) ;scalar_t__ debug; } ;
struct TYPE_2__ {int * strState; } ;


 int stub1 (struct FsmInst*,char*,int ) ;

void
FsmChangeState(struct FsmInst *fi, int newstate)
{
 fi->state = newstate;
 if (fi->debug)
  fi->printdebug(fi, "ChangeState %s",
   fi->fsm->strState[newstate]);
}
