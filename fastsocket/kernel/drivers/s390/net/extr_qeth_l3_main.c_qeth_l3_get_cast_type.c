
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; TYPE_2__* dev; } ;
struct TYPE_7__ {int link_type; } ;
struct qeth_card {TYPE_3__ info; } ;
struct TYPE_8__ {TYPE_1__* neighbour; } ;
struct TYPE_6__ {int broadcast; } ;
struct TYPE_5__ {int type; } ;


 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 int QETH_ETH_MAC_V4 ;
 int QETH_ETH_MAC_V6 ;


 int QETH_TR_MAC_C ;
 int QETH_TR_MAC_NC ;
 int RTN_ANYCAST ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 int RTN_UNSPEC ;
 int memcmp (scalar_t__,int ,int) ;
 TYPE_4__* skb_dst (struct sk_buff*) ;
 int* skb_network_header (struct sk_buff*) ;

int inline qeth_l3_get_cast_type(struct qeth_card *card, struct sk_buff *skb)
{
 int cast_type = RTN_UNSPEC;

 if (skb_dst(skb) && skb_dst(skb)->neighbour) {
  cast_type = skb_dst(skb)->neighbour->type;
  if ((cast_type == RTN_BROADCAST) ||
      (cast_type == RTN_MULTICAST) ||
      (cast_type == RTN_ANYCAST))
   return cast_type;
  else
   return RTN_UNSPEC;
 }

 if (skb->protocol == ETH_P_IPV6)
  return (skb_network_header(skb)[24] == 0xff) ?
    RTN_MULTICAST : 0;
 else if (skb->protocol == ETH_P_IP)
  return ((skb_network_header(skb)[16] & 0xf0) == 0xe0) ?
    RTN_MULTICAST : 0;

 if (!memcmp(skb->data, skb->dev->broadcast, 6))
  return RTN_BROADCAST;
 else {
  u16 hdr_mac;

  hdr_mac = *((u16 *)skb->data);

  switch (card->info.link_type) {
  case 129:
  case 128:
   if ((hdr_mac == QETH_TR_MAC_NC) ||
       (hdr_mac == QETH_TR_MAC_C))
    return RTN_MULTICAST;
   break;

  default:
  if ((hdr_mac == QETH_ETH_MAC_V4) ||
       (hdr_mac == QETH_ETH_MAC_V6))
    return RTN_MULTICAST;
  }
 }
 return cast_type;
}
