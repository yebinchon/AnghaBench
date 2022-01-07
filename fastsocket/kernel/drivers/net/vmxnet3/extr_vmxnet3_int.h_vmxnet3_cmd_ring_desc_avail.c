
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_cmd_ring {scalar_t__ next2comp; scalar_t__ next2fill; int size; } ;



__attribute__((used)) static inline int
vmxnet3_cmd_ring_desc_avail(struct vmxnet3_cmd_ring *ring)
{
 return (ring->next2comp > ring->next2fill ? 0 : ring->size) +
  ring->next2comp - ring->next2fill - 1;
}
