
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct au1k_private {int volatile** tx_ring; int volatile** rx_ring; } ;
typedef int ring_dest_t ;


 int NUM_IR_DESC ;

__attribute__((used)) static void
setup_hw_rings(struct au1k_private *aup, u32 rx_base, u32 tx_base)
{
 int i;
 for (i=0; i<NUM_IR_DESC; i++) {
  aup->rx_ring[i] = (volatile ring_dest_t *)
   (rx_base + sizeof(ring_dest_t)*i);
 }
 for (i=0; i<NUM_IR_DESC; i++) {
  aup->tx_ring[i] = (volatile ring_dest_t *)
   (tx_base + sizeof(ring_dest_t)*i);
 }
}
