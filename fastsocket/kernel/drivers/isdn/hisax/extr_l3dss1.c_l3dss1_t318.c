
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int cause; scalar_t__ loc; } ;
struct l3_process {int timer; TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_5__ {int (* l3l4 ) (TYPE_3__*,int ,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;


 int CC_RESUME_ERR ;
 int CC_T308_1 ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_RELEASE ;
 int T308 ;
 int l3dss1_message (struct l3_process*,int ) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int ,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_t318(struct l3_process *pc, u_char pr, void *arg)
{
 L3DelTimer(&pc->timer);
 pc->para.cause = 102;
 pc->para.loc = 0;
 pc->st->l3.l3l4(pc->st, CC_RESUME_ERR, pc);
 newl3state(pc, 19);
 l3dss1_message(pc, MT_RELEASE);
 L3AddTimer(&pc->timer, T308, CC_T308_1);
}
