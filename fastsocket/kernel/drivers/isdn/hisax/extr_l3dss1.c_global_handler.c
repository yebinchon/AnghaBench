
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int * data; } ;
struct l3_process {int state; int st; int callref; } ;
struct TYPE_4__ {int debug; struct l3_process* global; } ;
struct PStack {TYPE_1__ l3; } ;
struct TYPE_5__ {int primitive; int state; int (* rout ) (struct l3_process*,int,struct sk_buff*) ;} ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DL_DATA ;
 int IE_CAUSE ;
 int L3_DEB_STATE ;
 int MT_STATUS ;
 int MsgHead (int *,int ,int ) ;
 int REQUEST ;
 TYPE_2__* globalmes_list ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_debug (struct PStack*,char*,int,int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct l3_process*,int,struct sk_buff*) ;

__attribute__((used)) static void
global_handler(struct PStack *st, int mt, struct sk_buff *skb)
{
 u_char tmp[16];
 u_char *p = tmp;
 int l;
 int i;
 struct l3_process *proc = st->l3.global;

 proc->callref = skb->data[2];
 for (i = 0; i < ARRAY_SIZE(globalmes_list); i++)
  if ((mt == globalmes_list[i].primitive) &&
      ((1 << proc->state) & globalmes_list[i].state))
   break;
 if (i == ARRAY_SIZE(globalmes_list)) {
  if (st->l3.debug & L3_DEB_STATE) {
   l3_debug(st, "dss1 global state %d mt %x unhandled",
    proc->state, mt);
  }
  MsgHead(p, proc->callref, MT_STATUS);
  *p++ = IE_CAUSE;
  *p++ = 0x2;
  *p++ = 0x80;
  *p++ = 81 |0x80;
  *p++ = 0x14;
  *p++ = 0x1;
  *p++ = proc->state & 0x3f;
  l = p - tmp;
  if (!(skb = l3_alloc_skb(l)))
   return;
  memcpy(skb_put(skb, l), tmp, l);
  l3_msg(proc->st, DL_DATA | REQUEST, skb);
 } else {
  if (st->l3.debug & L3_DEB_STATE) {
   l3_debug(st, "dss1 global %d mt %x",
    proc->state, mt);
  }
  globalmes_list[i].rout(proc, mt, skb);
 }
}
