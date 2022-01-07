
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {char* uus1_data; } ;
struct TYPE_4__ {TYPE_1__ dss1; } ;
struct l3_process {int st; TYPE_2__ prot; int callref; } ;


 int DL_DATA ;
 int IE_USER_USER ;
 int MsgHead (int *,int ,int ) ;
 int REQUEST ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int strcpy (int *,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
l3dss1_msg_with_uus(struct l3_process *pc, u_char cmd)
{
 struct sk_buff *skb;
 u_char tmp[16+40];
 u_char *p = tmp;
 int l;

 MsgHead(p, pc->callref, cmd);

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
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
