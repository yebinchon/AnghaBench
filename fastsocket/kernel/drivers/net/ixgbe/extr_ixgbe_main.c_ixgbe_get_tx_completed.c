
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int packets; } ;
struct ixgbe_ring {TYPE_1__ stats; } ;



__attribute__((used)) static u64 ixgbe_get_tx_completed(struct ixgbe_ring *ring)
{
 return ring->stats.packets;
}
