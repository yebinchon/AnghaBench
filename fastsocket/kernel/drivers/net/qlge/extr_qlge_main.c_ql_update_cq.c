
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {scalar_t__ cnsmr_idx; scalar_t__ cq_len; scalar_t__ cq_base; scalar_t__ curr_entry; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ql_update_cq(struct rx_ring *rx_ring)
{
 rx_ring->cnsmr_idx++;
 rx_ring->curr_entry++;
 if (unlikely(rx_ring->cnsmr_idx == rx_ring->cq_len)) {
  rx_ring->cnsmr_idx = 0;
  rx_ring->curr_entry = rx_ring->cq_base;
 }
}
