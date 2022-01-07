
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sk_buff {int len; int data; } ;
struct hisax_d_if {int erq; struct IsdnCardState* cs; } ;
struct IsdnCardState {int debug; scalar_t__* dlog; } ;


 int DEB_DLOG_HEX ;
 int HiSax_putstatus (struct IsdnCardState*,char*,char*,...) ;
 int MAX_DLOG_SPACE ;
 int QuickHex (scalar_t__*,int ,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void EChannel_proc_rcv(struct hisax_d_if *d_if)
{
 struct IsdnCardState *cs = d_if->cs;
 u_char *ptr;
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&d_if->erq)) != ((void*)0)) {
  if (cs->debug & DEB_DLOG_HEX) {
   ptr = cs->dlog;
   if ((skb->len) < MAX_DLOG_SPACE / 3 - 10) {
    *ptr++ = 'E';
    *ptr++ = 'C';
    *ptr++ = 'H';
    *ptr++ = 'O';
    *ptr++ = ':';
    ptr += QuickHex(ptr, skb->data, skb->len);
    ptr--;
    *ptr++ = '\n';
    *ptr = 0;
    HiSax_putstatus(cs, ((void*)0), cs->dlog);
   } else
    HiSax_putstatus(cs, "LogEcho: ",
      "warning Frame too big (%d)",
      skb->len);
  }
  dev_kfree_skb_any(skb);
 }
}
