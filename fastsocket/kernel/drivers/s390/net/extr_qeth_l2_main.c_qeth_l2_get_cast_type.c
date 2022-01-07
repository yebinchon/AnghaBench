
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {TYPE_1__ info; } ;


 scalar_t__ QETH_CARD_TYPE_OSN ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 int RTN_UNSPEC ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static inline int qeth_l2_get_cast_type(struct qeth_card *card,
   struct sk_buff *skb)
{
 if (card->info.type == QETH_CARD_TYPE_OSN)
  return RTN_UNSPEC;
 if (is_broadcast_ether_addr(skb->data))
  return RTN_BROADCAST;
 if (is_multicast_ether_addr(skb->data))
  return RTN_MULTICAST;
 return RTN_UNSPEC;
}
