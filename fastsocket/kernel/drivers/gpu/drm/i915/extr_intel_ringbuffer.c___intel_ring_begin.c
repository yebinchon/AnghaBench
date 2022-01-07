
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {scalar_t__ tail; scalar_t__ effective_size; int space; } ;


 int intel_wrap_ring_buffer (struct intel_ring_buffer*) ;
 int ring_wait_for_space (struct intel_ring_buffer*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __intel_ring_begin(struct intel_ring_buffer *ring,
         int bytes)
{
 int ret;

 if (unlikely(ring->tail + bytes > ring->effective_size)) {
  ret = intel_wrap_ring_buffer(ring);
  if (unlikely(ret))
   return ret;
 }

 if (unlikely(ring->space < bytes)) {
  ret = ring_wait_for_space(ring, bytes);
  if (unlikely(ret))
   return ret;
 }

 ring->space -= bytes;
 return 0;
}
