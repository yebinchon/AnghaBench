
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int* data; int len; } ;
struct l3_process {int debug; int st; } ;


 int IE_CHANNEL_ID ;
 int L3_DEB_WARN ;
 int* findie (int*,int ,int ,int ) ;
 int l3_debug (int ,char*,int) ;

__attribute__((used)) static int
l3dss1_get_channel_id(struct l3_process *pc, struct sk_buff *skb) {
 u_char *p;

 p = skb->data;
 if ((p = findie(p, skb->len, IE_CHANNEL_ID, 0))) {
  p++;
  if (*p != 1) {
   if (pc->debug & L3_DEB_WARN)
    l3_debug(pc->st, "wrong chid len %d", *p);
   return (-2);
  }
  p++;
  if (*p & 0x60) {
   if (pc->debug & L3_DEB_WARN)
    l3_debug(pc->st, "wrong chid %x", *p);
   return (-3);
  }
  return(*p & 0x3);
 } else
  return(-1);
}
