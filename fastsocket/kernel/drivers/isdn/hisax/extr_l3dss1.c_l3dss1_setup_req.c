
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int* phone; int si1; int* eazmsn; int si2; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct l3_process {int debug; int st; int timer; TYPE_2__ para; int callref; } ;


 int CC_T303 ;
 int DL_DATA ;
 int* EncodeASyncParams (int*,int) ;
 void* EncodeSyncParams (int,int) ;
 void* IE_BEARER ;
 int IE_CALLED_PN ;
 int IE_CALLED_SUB ;
 int IE_CALLING_PN ;
 int IE_CALLING_SUB ;
 int IE_CHANNEL_ID ;
 int IE_KEYPAD ;
 void* IE_LLC ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int MT_SETUP ;
 int MsgHead (int*,int ,int ) ;
 int REQUEST ;
 int T303 ;
 int isdigit (int) ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_debug (int ,char*) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ strchr (int*,char) ;
 int strlen (int*) ;

__attribute__((used)) static void
l3dss1_setup_req(struct l3_process *pc, u_char pr,
   void *arg)
{
 struct sk_buff *skb;
 u_char tmp[128];
 u_char *p = tmp;
 u_char channel = 0;

        u_char send_keypad;
 u_char screen = 0x80;
 u_char *teln;
 u_char *msn;
 u_char *sub;
 u_char *sp;
 int l;

 MsgHead(p, pc->callref, MT_SETUP);

 teln = pc->para.setup.phone;

        send_keypad = (strchr(teln,'*') || strchr(teln,'#')) ? 1 : 0;




 if (!send_keypad)
  *p++ = 0xa1;




 switch (pc->para.setup.si1) {
 case 1:
  *p++ = IE_BEARER;
  *p++ = 0x3;
  *p++ = 0x90;
  *p++ = 0x90;
  *p++ = 0xa3;
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

 if (send_keypad) {
  *p++ = IE_KEYPAD;
  *p++ = strlen(teln);
  while (*teln)
   *p++ = (*teln++) & 0x7F;
 }




 if ((*teln) && (!send_keypad)) {

  if (!isdigit(*teln)) {
   switch (0x5f & *teln) {
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
    case 'R':
     screen = 0xA0;
     break;
    case 'D':
     screen = 0x80;
     break;

           default:
     if (pc->debug & L3_DEB_WARN)
      l3_debug(pc->st, "Wrong MSN Code");
     break;
   }
   teln++;
  }
 }
 if (channel) {
  *p++ = IE_CHANNEL_ID;
  *p++ = 1;
  *p++ = channel;
 }
 msn = pc->para.setup.eazmsn;
 sub = ((void*)0);
 sp = msn;
 while (*sp) {
  if ('.' == *sp) {
   sub = sp;
   *sp = 0;
  } else
   sp++;
 }
 if (*msn) {
  *p++ = IE_CALLING_PN;
  *p++ = strlen(msn) + (screen ? 2 : 1);

  if (screen) {
   *p++ = 0x01;
   *p++ = screen;
  } else
   *p++ = 0x81;
  while (*msn)
   *p++ = *msn++ & 0x7f;
 }
 if (sub) {
  *sub++ = '.';
  *p++ = IE_CALLING_SUB;
  *p++ = strlen(sub) + 2;
  *p++ = 0x80;
  *p++ = 0x50;
  while (*sub)
   *p++ = *sub++ & 0x7f;
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

        if (!send_keypad) {
  *p++ = IE_CALLED_PN;
  *p++ = strlen(teln) + 1;

  *p++ = 0x81;
  while (*teln)
   *p++ = *teln++ & 0x7f;

  if (sub) {
   *sub++ = '.';
   *p++ = IE_CALLED_SUB;
   *p++ = strlen(sub) + 2;
   *p++ = 0x80;
   *p++ = 0x50;
   while (*sub)
    *p++ = *sub++ & 0x7f;
  }
        }
 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T303, CC_T303);
 newl3state(pc, 1);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
