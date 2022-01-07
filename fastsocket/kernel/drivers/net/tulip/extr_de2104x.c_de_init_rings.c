
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct de_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; TYPE_1__* tx_ring; } ;
struct de_desc {int dummy; } ;
struct TYPE_2__ {int opts2; } ;


 int DE_TX_RING_SIZE ;
 int RingEnd ;
 int cpu_to_le32 (int ) ;
 int de_refill_rx (struct de_private*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int de_init_rings (struct de_private *de)
{
 memset(de->tx_ring, 0, sizeof(struct de_desc) * DE_TX_RING_SIZE);
 de->tx_ring[DE_TX_RING_SIZE - 1].opts2 = cpu_to_le32(RingEnd);

 de->rx_tail = 0;
 de->tx_head = de->tx_tail = 0;

 return de_refill_rx (de);
}
