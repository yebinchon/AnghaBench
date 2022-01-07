
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int* data; int len; } ;
struct TYPE_6__ {int chargeinfo; int cause; int loc; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_7__ {int debug; int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {TYPE_2__ l3; } ;


 int CC_CHARGE ;
 int CC_DISCONNECT ;
 int INDICATION ;
 int L3_DEB_CHARGE ;
 int L3_DEB_WARN ;
 int NO_CAUSE ;
 int StopAllL3Timer (struct l3_process*) ;
 int WE0_cause ;
 int WE6_chargingInfo ;
 int WE6_date ;
 int dev_kfree_skb (struct sk_buff*) ;
 int* findie (int*,int ,int ,int) ;
 int iecpy (char*,int*,int) ;
 int l3_1tr6_error (struct l3_process*,char*,struct sk_buff*) ;
 int l3_debug (TYPE_3__*,char*) ;
 int newl3state (struct l3_process*,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;
 int stub2 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3_1tr6_disc(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 u_char *p;
 int i, tmpcharge = 0;
 char a_charge[8], tmp[32];

 StopAllL3Timer(pc);
 p = skb->data;
 if ((p = findie(p, skb->len, WE6_chargingInfo, 6))) {
  iecpy(a_charge, p, 1);
  for (i = 0; i < strlen(a_charge); i++) {
   tmpcharge *= 10;
   tmpcharge += a_charge[i] & 0xf;
  }
  if (tmpcharge > pc->para.chargeinfo) {
   pc->para.chargeinfo = tmpcharge;
   pc->st->l3.l3l4(pc->st, CC_CHARGE | INDICATION, pc);
  }
  if (pc->st->l3.debug & L3_DEB_CHARGE) {
   sprintf(tmp, "charging info %d", pc->para.chargeinfo);
   l3_debug(pc->st, tmp);
  }
 } else if (pc->st->l3.debug & L3_DEB_CHARGE)
  l3_debug(pc->st, "charging info not found");


 p = skb->data;
 if ((p = findie(p, skb->len, WE0_cause, 0))) {
  if (p[1] > 0) {
   pc->para.cause = p[2];
   if (p[1] > 1)
    pc->para.loc = p[3];
   else
    pc->para.loc = 0;
  } else {
   pc->para.cause = 0;
   pc->para.loc = 0;
  }
 } else {
  if (pc->st->l3.debug & L3_DEB_WARN)
   l3_debug(pc->st, "cause not found");
  pc->para.cause = NO_CAUSE;
 }
 if (!findie(skb->data, skb->len, WE6_date, 6)) {
  l3_1tr6_error(pc, "missing connack date", skb);
  return;
 }
 dev_kfree_skb(skb);
 newl3state(pc, 12);
 pc->st->l3.l3l4(pc->st, CC_DISCONNECT | INDICATION, pc);
}
