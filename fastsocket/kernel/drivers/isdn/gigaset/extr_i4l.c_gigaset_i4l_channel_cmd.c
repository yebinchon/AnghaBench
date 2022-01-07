
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bc_state {TYPE_2__* cs; int channel; } ;
struct TYPE_7__ {int command; int arg; int driver; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_5__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_1__ iif; int myid; } ;


 int stub1 (TYPE_3__*) ;

void gigaset_i4l_channel_cmd(struct bc_state *bcs, int cmd)
{
 isdn_ctrl command;

 command.driver = bcs->cs->myid;
 command.command = cmd;
 command.arg = bcs->channel;
 bcs->cs->iif.statcallb(&command);
}
