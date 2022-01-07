
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int head; int tail; scalar_t__ size; } ;


 int HEAD_ADDR ;
 int I915_RING_FREE_SPACE ;

__attribute__((used)) static inline int ring_space(struct intel_ring_buffer *ring)
{
 int space = (ring->head & HEAD_ADDR) - (ring->tail + I915_RING_FREE_SPACE);
 if (space < 0)
  space += ring->size;
 return space;
}
