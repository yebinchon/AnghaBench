
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct txfcb {int flags; int l4os; scalar_t__ l3os; int phcs; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ protocol; } ;
struct TYPE_5__ {int check; } ;
struct TYPE_4__ {int check; } ;


 scalar_t__ GMAC_FCB_LEN ;
 scalar_t__ IPPROTO_UDP ;
 int TXFCB_DEFAULT ;
 int TXFCB_UDP ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 TYPE_2__* tcp_hdr (struct sk_buff*) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void gfar_tx_checksum(struct sk_buff *skb, struct txfcb *fcb)
{
 u8 flags = 0;





 flags = TXFCB_DEFAULT;



 if (ip_hdr(skb)->protocol == IPPROTO_UDP) {
  flags |= TXFCB_UDP;
  fcb->phcs = udp_hdr(skb)->check;
 } else
  fcb->phcs = tcp_hdr(skb)->check;





 fcb->l3os = (u16)(skb_network_offset(skb) - GMAC_FCB_LEN);
 fcb->l4os = skb_network_header_len(skb);

 fcb->flags = flags;
}
