
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct l3_process {TYPE_2__* st; int timer; } ;
struct TYPE_3__ {int (* l3l4 ) (TYPE_2__*,int,struct l3_process*) ;} ;
struct TYPE_4__ {TYPE_1__ l3; } ;


 int CC_RELEASE ;
 int INDICATION ;
 int L3DelTimer (int *) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_2__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_restart(struct l3_process *pc, u_char pr, void *arg)
{
 L3DelTimer(&pc->timer);
 pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
 ni1_release_l3_process(pc);
}
