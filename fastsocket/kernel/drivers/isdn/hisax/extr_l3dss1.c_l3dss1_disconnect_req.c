
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {char* uus1_data; } ;
struct TYPE_6__ {TYPE_2__ dss1; } ;
struct TYPE_4__ {scalar_t__ cause; } ;
struct l3_process {int timer; int st; TYPE_3__ prot; int callref; TYPE_1__ para; } ;


 int CC_T305 ;
 int DL_DATA ;
 int IE_CAUSE ;
 int IE_USER_USER ;
 int L3AddTimer (int *,int ,int ) ;
 int MT_DISCONNECT ;
 int MsgHead (int*,int ,int ) ;
 scalar_t__ NO_CAUSE ;
 int REQUEST ;
 int StopAllL3Timer (struct l3_process*) ;
 int T305 ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int strcpy (int*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
l3dss1_disconnect_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[16+40];
 u_char *p = tmp;
 int l;
 u_char cause = 16;

 if (pc->para.cause != NO_CAUSE)
  cause = pc->para.cause;

 StopAllL3Timer(pc);

 MsgHead(p, pc->callref, MT_DISCONNECT);

 *p++ = IE_CAUSE;
 *p++ = 0x2;
 *p++ = 0x80;
 *p++ = cause | 0x80;

        if (pc->prot.dss1.uus1_data[0])
  { *p++ = IE_USER_USER;
           *p++ = strlen(pc->prot.dss1.uus1_data) + 1;
           *p++ = 0x04;
           strcpy(p,pc->prot.dss1.uus1_data);
           p += strlen(pc->prot.dss1.uus1_data);
           pc->prot.dss1.uus1_data[0] = '\0';
         }

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 newl3state(pc, 11);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 L3AddTimer(&pc->timer, T305, CC_T305);
}
