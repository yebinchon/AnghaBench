
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;
struct cardstate {TYPE_1__ iif; int myid; } ;
struct TYPE_5__ {int command; scalar_t__ arg; int driver; } ;
typedef TYPE_2__ isdn_ctrl ;


 int stub1 (TYPE_2__*) ;

void gigaset_i4l_cmd(struct cardstate *cs, int cmd)
{
 isdn_ctrl command;

 command.driver = cs->myid;
 command.command = cmd;
 command.arg = 0;
 cs->iif.statcallb(&command);
}
