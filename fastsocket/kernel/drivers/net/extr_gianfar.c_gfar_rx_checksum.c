
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;
struct rxfcb {int flags; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int RXFCB_CIP ;
 int RXFCB_CSUM_MASK ;
 int RXFCB_CTU ;

__attribute__((used)) static inline void gfar_rx_checksum(struct sk_buff *skb, struct rxfcb *fcb)
{



 if ((fcb->flags & RXFCB_CSUM_MASK) == (RXFCB_CIP | RXFCB_CTU))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 else
  skb->ip_summed = CHECKSUM_NONE;
}
