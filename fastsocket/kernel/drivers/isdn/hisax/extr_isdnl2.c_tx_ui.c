
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ui_queue; } ;
struct PStack {TYPE_1__ l2; } ;


 int CMD ;
 int MAX_HEADER_LEN ;
 int UI ;
 int enqueue_ui (struct PStack*,struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int sethdraddr (TYPE_1__*,int *,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void
tx_ui(struct PStack *st)
{
 struct sk_buff *skb;
 u_char header[MAX_HEADER_LEN];
 int i;

 i = sethdraddr(&(st->l2), header, CMD);
 header[i++] = UI;
 while ((skb = skb_dequeue(&st->l2.ui_queue))) {
  memcpy(skb_push(skb, i), header, i);
  enqueue_ui(st, skb);
 }
}
