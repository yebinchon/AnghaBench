
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ cause; } ;
struct l3_process {int timer; int st; int callref; TYPE_1__ para; } ;


 int CAUSE_CallRejected ;
 int CAUSE_UserBusy ;
 int CC_T305 ;
 int DL_DATA ;
 int L3AddTimer (int *,int ,int ) ;
 int MT_N1_DISC ;
 int MsgHead (int*,int ,int ,int ) ;
 int PROTO_DIS_N1 ;
 int REQUEST ;
 int StopAllL3Timer (struct l3_process*) ;
 int T305 ;
 int WE0_cause ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3_1tr6_disconnect_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[16];
 u_char *p = tmp;
 int l;
 u_char cause = 0x10;
 u_char clen = 1;

 if (pc->para.cause > 0)
  cause = pc->para.cause;

 switch (cause & 0x7f) {
  case 0x10:
   clen = 0;
   break;
                case 0x11:
                        cause = CAUSE_UserBusy;
                        break;
  case 0x15:
   cause = CAUSE_CallRejected;
   break;
 }
 StopAllL3Timer(pc);
 MsgHead(p, pc->callref, MT_N1_DISC, PROTO_DIS_N1);
 *p++ = WE0_cause;
 *p++ = clen;
 if (clen)
  *p++ = cause | 0x80;
 newl3state(pc, 11);
 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 L3AddTimer(&pc->timer, T305, CC_T305);
}
