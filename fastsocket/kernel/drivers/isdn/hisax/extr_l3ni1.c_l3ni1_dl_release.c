
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int cause; scalar_t__ loc; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_5__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int INDICATION ;
 int newl3state (struct l3_process*,int ) ;
 int release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_dl_release(struct l3_process *pc, u_char pr, void *arg)
{
        newl3state(pc, 0);
        pc->para.cause = 0x1b;
        pc->para.loc = 0;
        pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
        release_l3_process(pc);
}
