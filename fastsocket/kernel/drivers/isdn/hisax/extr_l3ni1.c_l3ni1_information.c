
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; int * data; } ;
struct TYPE_5__ {int eazmsn; } ;
struct TYPE_6__ {TYPE_1__ setup; } ;
struct l3_process {int state; int timer; TYPE_4__* st; TYPE_2__ para; } ;
struct TYPE_7__ {int (* l3l4 ) (TYPE_4__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {TYPE_3__ l3; } ;


 int CC_MORE_INFO ;
 int CC_T302 ;
 int INDICATION ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int T302 ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int * findie (int *,int ,int,int ) ;
 int ie_INFORMATION ;
 int iecpy (char*,int *,int) ;
 int l3ni1_std_ie_err (struct l3_process*,int) ;
 int strcat (int ,char*) ;
 int stub1 (TYPE_4__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_information(struct l3_process *pc, u_char pr, void *arg)
{
 int ret;
 struct sk_buff *skb = arg;
 u_char *p;
 char tmp[32];

 ret = check_infoelements(pc, skb, ie_INFORMATION);
 if (ret)
  l3ni1_std_ie_err(pc, ret);
 if (pc->state == 25) {
  L3DelTimer(&pc->timer);
  p = skb->data;
  if ((p = findie(p, skb->len, 0x70, 0))) {
   iecpy(tmp, p, 1);
   strcat(pc->para.setup.eazmsn, tmp);
   pc->st->l3.l3l4(pc->st, CC_MORE_INFO | INDICATION, pc);
  }
  L3AddTimer(&pc->timer, T302, CC_T302);
 }
}
