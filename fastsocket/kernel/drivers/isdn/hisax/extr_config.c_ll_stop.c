
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;
struct IsdnCardState {TYPE_1__ iif; int myid; } ;
struct TYPE_5__ {int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;


 int ISDN_STAT_STOP ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ll_stop(struct IsdnCardState *cs)
{
 isdn_ctrl ic;

 ic.command = ISDN_STAT_STOP;
 ic.driver = cs->myid;
 cs->iif.statcallb(&ic);

}
