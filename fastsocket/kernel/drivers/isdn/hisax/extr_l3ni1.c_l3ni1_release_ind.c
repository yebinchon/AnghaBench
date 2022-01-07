
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int* data; int len; } ;
struct l3_process {TYPE_2__* st; } ;
struct TYPE_4__ {int (* l3l4 ) (TYPE_2__*,int,struct l3_process*) ;} ;
struct TYPE_5__ {TYPE_1__ l3; } ;


 int CC_IGNORE ;
 int CC_RELEASE ;
 int IE_CALL_STATE ;
 int INDICATION ;
 int* findie (int*,int ,int ,int ) ;
 int newl3state (struct l3_process*,int ) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_2__*,int,struct l3_process*) ;
 int stub2 (TYPE_2__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_release_ind(struct l3_process *pc, u_char pr, void *arg)
{
 u_char *p;
 struct sk_buff *skb = arg;
 int callState = 0;
 p = skb->data;

 if ((p = findie(p, skb->len, IE_CALL_STATE, 0))) {
  p++;
  if (1 == *p++)
   callState = *p;
 }
 if (callState == 0) {



  pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
  newl3state(pc, 0);
  ni1_release_l3_process(pc);
 } else {
  pc->st->l3.l3l4(pc->st, CC_IGNORE | INDICATION, pc);
 }
}
