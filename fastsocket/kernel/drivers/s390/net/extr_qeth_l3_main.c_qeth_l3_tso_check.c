
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int doff; } ;


 unsigned long PAGE_MASK ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline int qeth_l3_tso_check(struct sk_buff *skb)
{
 int len = ((unsigned long)tcp_hdr(skb) + tcp_hdr(skb)->doff * 4) -
  (unsigned long)skb->data;
 return (((unsigned long)skb->data & PAGE_MASK) !=
  (((unsigned long)skb->data + len) & PAGE_MASK));
}
