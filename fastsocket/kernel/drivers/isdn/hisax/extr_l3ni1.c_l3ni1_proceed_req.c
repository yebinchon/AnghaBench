
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct l3_process {TYPE_2__* st; } ;
struct TYPE_3__ {int (* l3l4 ) (TYPE_2__*,int,struct l3_process*) ;} ;
struct TYPE_4__ {TYPE_1__ l3; } ;


 int CC_PROCEED_SEND ;
 int INDICATION ;
 int MT_CALL_PROCEEDING ;
 int l3ni1_message (struct l3_process*,int ) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_2__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_proceed_req(struct l3_process *pc, u_char pr,
     void *arg)
{
 newl3state(pc, 9);
 l3ni1_message(pc, MT_CALL_PROCEEDING);
 pc->st->l3.l3l4(pc->st, CC_PROCEED_SEND | INDICATION, pc);
}
