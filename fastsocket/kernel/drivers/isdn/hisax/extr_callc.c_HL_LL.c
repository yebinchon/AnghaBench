
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct Channel {TYPE_2__* cs; int chan; } ;
struct TYPE_7__ {int command; int arg; int driver; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_5__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_1__ iif; int myid; } ;


 int stub1 (TYPE_3__*) ;

__attribute__((used)) static inline void
HL_LL(struct Channel *chanp, int command)
{
 isdn_ctrl ic;

 ic.driver = chanp->cs->myid;
 ic.command = command;
 ic.arg = chanp->chan;
 chanp->cs->iif.statcallb(&ic);
}
