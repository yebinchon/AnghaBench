
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int cause; scalar_t__ loc; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; int timer; } ;
struct TYPE_5__ {int (* l3l4 ) (TYPE_3__*,int ,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;


 int CC_SETUP_ERR ;
 int L3DelTimer (int *) ;
 int l3dss1_disconnect_req (struct l3_process*,int ,int *) ;
 int stub1 (TYPE_3__*,int ,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_t310(struct l3_process *pc, u_char pr, void *arg)
{
 L3DelTimer(&pc->timer);
 pc->para.loc = 0;
 pc->para.cause = 102;
 l3dss1_disconnect_req(pc, pr, ((void*)0));
 pc->st->l3.l3l4(pc->st, CC_SETUP_ERR, pc);
}
