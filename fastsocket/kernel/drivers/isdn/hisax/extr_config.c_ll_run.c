
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int features; int (* statcallb ) (TYPE_2__*) ;} ;
struct IsdnCardState {TYPE_1__ iif; int myid; } ;
struct TYPE_5__ {int command; int driver; } ;
typedef TYPE_2__ isdn_ctrl ;


 int ISDN_STAT_RUN ;
 int stub1 (TYPE_2__*) ;

int ll_run(struct IsdnCardState *cs, int addfeatures)
{
 isdn_ctrl ic;

 ic.driver = cs->myid;
 ic.command = ISDN_STAT_RUN;
 cs->iif.features |= addfeatures;
 cs->iif.statcallb(&ic);
 return 0;
}
