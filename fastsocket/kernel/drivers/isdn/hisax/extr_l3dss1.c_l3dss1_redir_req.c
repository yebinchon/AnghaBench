
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int invoke_id; int uus1_data; } ;
struct TYPE_8__ {TYPE_2__ dss1; } ;
struct TYPE_6__ {int cause; } ;
struct l3_process {int st; TYPE_5__* chan; TYPE_3__ prot; int callref; TYPE_1__ para; } ;
struct TYPE_9__ {char* phone; int screen; int eazmsn; } ;
struct TYPE_10__ {TYPE_4__ setup; } ;


 int DL_DATA ;
 int MT_FACILITY ;
 int MsgHead (char*,int ,int ) ;
 int REQUEST ;
 int free_invoke_id (int ,int) ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int l3dss1_disconnect_req (struct l3_process*,char,void*) ;
 int memcpy (int ,char*,int) ;
 int new_invoke_id (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int strcpy (int ,int ) ;
 char strlen (char*) ;

__attribute__((used)) static void l3dss1_redir_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[128];
 u_char *p = tmp;
        u_char *subp;
        u_char len_phone = 0;
        u_char len_sub = 0;
 int l;


        strcpy(pc->prot.dss1.uus1_data,pc->chan->setup.eazmsn);
        if (!pc->chan->setup.phone[0])
          { pc->para.cause = -1;
            l3dss1_disconnect_req(pc,pr,arg);
            return;
          }

        if (pc->prot.dss1.invoke_id)
          free_invoke_id(pc->st,pc->prot.dss1.invoke_id);

        if (!(pc->prot.dss1.invoke_id = new_invoke_id(pc->st)))
          return;

        MsgHead(p, pc->callref, MT_FACILITY);

        for (subp = pc->chan->setup.phone; (*subp) && (*subp != '.'); subp++) len_phone++;
        if (*subp++ == '.') len_sub = strlen(subp) + 2;

 *p++ = 0x1c;
        *p++ = len_phone + len_sub + 2 + 2 + 8 + 3 + 3;
        *p++ = 0x91;
        *p++ = 0xa1;

        *p++ = len_phone + len_sub + 2 + 2 + 8 + 3;
        *p++ = 0x02;
 *p++ = 0x01;
        *p++ = pc->prot.dss1.invoke_id;
        *p++ = 0x02;
 *p++ = 0x01;
        *p++ = 0x0D;

        *p++ = 0x30;
        *p++ = len_phone + 2 + 2 + 3 + len_sub;

        *p++ = 0x30;
        *p++ = len_phone+2+len_sub;
        *p++ = 0x80;
 *p++ = len_phone;
        for (l = 0; l < len_phone; l++)
  *p++ = pc->chan->setup.phone[l];

        if (len_sub)
   { *p++ = 0x04;
            *p++ = len_sub - 2;
            while (*subp) *p++ = *subp++;
          }

        *p++ = 0x01;
        *p++ = 0x01;
        *p++ = pc->chan->setup.screen;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l))) return;
 memcpy(skb_put(skb, l), tmp, l);

        l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
