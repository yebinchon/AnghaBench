
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int id; } ;



__attribute__((used)) static inline unsigned
intel_ring_flag(struct intel_ring_buffer *ring)
{
 return 1 << ring->id;
}
