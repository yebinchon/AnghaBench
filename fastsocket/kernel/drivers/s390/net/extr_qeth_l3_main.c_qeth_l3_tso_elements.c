
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned long len; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int doff; } ;


 int PFN_DOWN (unsigned long) ;
 int PFN_UP (unsigned long) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline int qeth_l3_tso_elements(struct sk_buff *skb)
{
 unsigned long tcpd = (unsigned long)tcp_hdr(skb) +
  tcp_hdr(skb)->doff * 4;
 int tcpd_len = skb->len - (tcpd - (unsigned long)skb->data);
 int elements = PFN_UP(tcpd + tcpd_len) - PFN_DOWN(tcpd);
 elements += skb_shinfo(skb)->nr_frags;
 return elements;
}
