
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct l3_process {scalar_t__ N303; TYPE_2__* st; int timer; } ;
struct TYPE_3__ {int (* l3l4 ) (TYPE_2__*,int ,struct l3_process*) ;} ;
struct TYPE_4__ {TYPE_1__ l3; } ;


 int CC_NOSETUP_RSP ;
 int L3DelTimer (int *) ;
 int MT_RELEASE_COMPLETE ;
 int l3ni1_message_cause (struct l3_process*,int ,int) ;
 int l3ni1_setup_req (struct l3_process*,int ,void*) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_2__*,int ,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_t303(struct l3_process *pc, u_char pr, void *arg)
{
 if (pc->N303 > 0) {
  pc->N303--;
  L3DelTimer(&pc->timer);
  l3ni1_setup_req(pc, pr, arg);
 } else {
  L3DelTimer(&pc->timer);
  l3ni1_message_cause(pc, MT_RELEASE_COMPLETE, 102);
  pc->st->l3.l3l4(pc->st, CC_NOSETUP_RSP, pc);
  ni1_release_l3_process(pc);
 }
}
