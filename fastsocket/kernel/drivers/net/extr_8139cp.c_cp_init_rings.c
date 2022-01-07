
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cp_private {TYPE_1__* tx_ring; } ;
struct cp_desc {int dummy; } ;
struct TYPE_2__ {int opts1; } ;


 int CP_TX_RING_SIZE ;
 int RingEnd ;
 int cp_init_rings_index (struct cp_private*) ;
 int cp_refill_rx (struct cp_private*) ;
 int cpu_to_le32 (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int cp_init_rings (struct cp_private *cp)
{
 memset(cp->tx_ring, 0, sizeof(struct cp_desc) * CP_TX_RING_SIZE);
 cp->tx_ring[CP_TX_RING_SIZE - 1].opts1 = cpu_to_le32(RingEnd);

 cp_init_rings_index(cp);

 return cp_refill_rx (cp);
}
