
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int * obj; } ;



__attribute__((used)) static inline bool
intel_ring_initialized(struct intel_ring_buffer *ring)
{
 return ring->obj != ((void*)0);
}
