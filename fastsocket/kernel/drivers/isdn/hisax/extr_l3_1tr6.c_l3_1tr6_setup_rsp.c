
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int si2; int si1; } ;
struct TYPE_4__ {TYPE_1__ setup; scalar_t__ spv; } ;
struct l3_process {int timer; int st; TYPE_2__ para; int callref; } ;


 int CC_T313 ;
 int DL_DATA ;
 int FAC_Activate ;
 int FAC_SPV ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_N1_CONN ;
 int MsgHead (int *,int ,int ,int ) ;
 int PROTO_DIS_N1 ;
 int REQUEST ;
 int T313 ;
 void* WE0_netSpecFac ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3_1tr6_setup_rsp(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[24];
 u_char *p = tmp;
 int l;

 MsgHead(p, pc->callref, MT_N1_CONN, PROTO_DIS_N1);
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
 newl3state(pc, 8);
 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T313, CC_T313);
}
