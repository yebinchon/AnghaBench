
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int ip_summed; } ;


 int CHECKSUM_UNNECESSARY ;
 scalar_t__ RxProtoMask ;
 scalar_t__ RxProtoTCP ;
 scalar_t__ RxProtoUDP ;
 scalar_t__ TCPFail ;
 scalar_t__ UDPFail ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void rtl8169_rx_csum(struct sk_buff *skb, u32 opts1)
{
 u32 status = opts1 & RxProtoMask;

 if (((status == RxProtoTCP) && !(opts1 & TCPFail)) ||
     ((status == RxProtoUDP) && !(opts1 & UDPFail)))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 else
  skb_checksum_none_assert(skb);
}
