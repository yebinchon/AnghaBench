
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_cmd_ring {scalar_t__ next2fill; scalar_t__ size; int gen; } ;


 int VMXNET3_FLIP_RING_GEN (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
vmxnet3_cmd_ring_adv_next2fill(struct vmxnet3_cmd_ring *ring)
{
 ring->next2fill++;
 if (unlikely(ring->next2fill == ring->size)) {
  ring->next2fill = 0;
  VMXNET3_FLIP_RING_GEN(ring->gen);
 }
}
