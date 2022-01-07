
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_dmaring {TYPE_1__* ops; int tx; } ;
struct TYPE_2__ {int (* get_current_rxslot ) (struct b43_dmaring*) ;int (* set_current_rxslot ) (struct b43_dmaring*,int) ;} ;


 int B43_WARN_ON (int ) ;
 int prev_slot (struct b43_dmaring*,int) ;
 int stub1 (struct b43_dmaring*) ;
 int stub2 (struct b43_dmaring*,int) ;

void b43_dma_handle_rx_overflow(struct b43_dmaring *ring)
{
 int current_slot, previous_slot;

 B43_WARN_ON(ring->tx);
 current_slot = ring->ops->get_current_rxslot(ring);
 previous_slot = prev_slot(ring, current_slot);
 ring->ops->set_current_rxslot(ring, previous_slot);
}
