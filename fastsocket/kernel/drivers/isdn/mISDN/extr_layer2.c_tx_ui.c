
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct layer2 {int ui_queue; int flag; } ;


 int CMD ;
 int FLG_LAPD_NET ;
 int MAX_L2HEADER_LEN ;
 int UI ;
 int enqueue_ui (struct layer2*,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int sethdraddr (struct layer2*,int*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_push (struct sk_buff*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
tx_ui(struct layer2 *l2)
{
 struct sk_buff *skb;
 u_char header[MAX_L2HEADER_LEN];
 int i;

 i = sethdraddr(l2, header, CMD);
 if (test_bit(FLG_LAPD_NET, &l2->flag))
  header[1] = 0xff;
 header[i++] = UI;
 while ((skb = skb_dequeue(&l2->ui_queue))) {
  memcpy(skb_push(skb, i), header, i);
  enqueue_ui(l2, skb);
 }
}
