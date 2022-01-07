
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int* phone; int* eazmsn; int si2; int si1; } ;
struct TYPE_8__ {int spv; TYPE_2__ setup; } ;
struct l3_process {TYPE_4__* st; int timer; TYPE_3__ para; int callref; } ;
struct TYPE_6__ {int debug; } ;
struct TYPE_9__ {TYPE_1__ l3; } ;


 int CC_T303 ;
 int DL_DATA ;
 int FAC_Activate ;
 int FAC_SPV ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int MT_N1_SETUP ;
 int MsgHead (int*,int ,int ,int ) ;
 int PROTO_DIS_N1 ;
 int REQUEST ;
 int T303 ;
 int WE0_destAddr ;
 void* WE0_netSpecFac ;
 int WE0_origAddr ;
 int WE6_serviceInd ;
 int WE_Shift_F6 ;
 int isdigit (int) ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_debug (TYPE_4__*,char*) ;
 int l3_msg (TYPE_4__*,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int strlen (int*) ;

__attribute__((used)) static void
l3_1tr6_setup_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[128];
 u_char *p = tmp;
 u_char *teln;
 u_char *eaz;
 u_char channel = 0;
 int l;

 MsgHead(p, pc->callref, MT_N1_SETUP, PROTO_DIS_N1);
 teln = pc->para.setup.phone;
 pc->para.spv = 0;
 if (!isdigit(*teln)) {
  switch (0x5f & *teln) {
   case 'S':
    pc->para.spv = 1;
    break;
   case 'C':
    channel = 0x08;
   case 'P':
    channel |= 0x80;
    teln++;
    if (*teln == '1')
     channel |= 0x01;
    else
     channel |= 0x02;
    break;
   default:
    if (pc->st->l3.debug & L3_DEB_WARN)
     l3_debug(pc->st, "Wrong MSN Code");
    break;
  }
  teln++;
 }
 if (channel) {
  *p++ = 0x18;
  *p++ = 1;
  *p++ = channel;
 }
 if (pc->para.spv) {

  *p++ = WE0_netSpecFac;
  *p++ = 4;
  *p++ = 0;
  *p++ = FAC_SPV;
  *p++ = pc->para.setup.si1;
  *p++ = pc->para.setup.si2;
  *p++ = WE0_netSpecFac;
  *p++ = 4;
  *p++ = 0;
  *p++ = FAC_Activate;
  *p++ = pc->para.setup.si1;
  *p++ = pc->para.setup.si2;
 }
 eaz = pc->para.setup.eazmsn;
 if (*eaz) {
  *p++ = WE0_origAddr;
  *p++ = strlen(eaz) + 1;

  *p++ = 0x81;
  while (*eaz)
   *p++ = *eaz++ & 0x7f;
 }
 *p++ = WE0_destAddr;
 *p++ = strlen(teln) + 1;

 *p++ = 0x81;
 while (*teln)
  *p++ = *teln++ & 0x7f;

 *p++ = WE_Shift_F6;

 *p++ = WE6_serviceInd;
 *p++ = 2;
 *p++ = pc->para.setup.si1;
 *p++ = pc->para.setup.si2;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T303, CC_T303);
 newl3state(pc, 1);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
