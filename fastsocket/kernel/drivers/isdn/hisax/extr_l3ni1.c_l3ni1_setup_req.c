
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {char* phone; int si1; int si2; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct l3_process {int st; int timer; TYPE_2__ para; int callref; } ;


 int CC_T303 ;
 int DL_DATA ;
 char* EncodeASyncParams (char*,int) ;
 void* EncodeSyncParams (int,int) ;
 void* IE_BEARER ;
 int IE_KEYPAD ;
 void* IE_LLC ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_SETUP ;
 int MsgHead (char*,int ,int ) ;
 int REQUEST ;
 int T303 ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,char*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
l3ni1_setup_req(struct l3_process *pc, u_char pr,
   void *arg)
{
 struct sk_buff *skb;
 u_char tmp[128];
 u_char *p = tmp;

 u_char *teln;
 u_char *sub;
 u_char *sp;
 int l;

 MsgHead(p, pc->callref, MT_SETUP);

 teln = pc->para.setup.phone;

 *p++ = 0xa1;



 switch (pc->para.setup.si1) {
 case 1:
  *p++ = IE_BEARER;
  *p++ = 0x3;
  *p++ = 0x90;
  *p++ = 0x90;
  *p++ = 0xa2;
  break;
 case 5:
 case 7:
 default:
  *p++ = IE_BEARER;
  *p++ = 0x2;
  *p++ = 0x88;
  *p++ = 0x90;
  break;
 }

 sub = ((void*)0);
 sp = teln;
 while (*sp) {
  if ('.' == *sp) {
   sub = sp;
   *sp = 0;
  } else
   sp++;
 }

 *p++ = IE_KEYPAD;
 *p++ = strlen(teln);
 while (*teln)
  *p++ = (*teln++) & 0x7F;

 if (sub)
  *sub++ = '.';
 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
{
  return;
}
 memcpy(skb_put(skb, l), tmp, l);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T303, CC_T303);
 newl3state(pc, 1);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
