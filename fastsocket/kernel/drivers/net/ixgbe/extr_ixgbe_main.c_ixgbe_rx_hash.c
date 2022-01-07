
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rss; } ;
struct TYPE_7__ {TYPE_2__ hi_dword; } ;
struct TYPE_8__ {TYPE_3__ lower; } ;
union ixgbe_adv_rx_desc {TYPE_4__ wb; } ;
struct sk_buff {int rxhash; } ;
struct ixgbe_ring {TYPE_1__* netdev; } ;
struct TYPE_5__ {int features; } ;


 int NETIF_F_RXHASH ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void ixgbe_rx_hash(struct ixgbe_ring *ring,
     union ixgbe_adv_rx_desc *rx_desc,
     struct sk_buff *skb)
{
 if (ring->netdev->features & NETIF_F_RXHASH)
  skb->rxhash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
}
