
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 scalar_t__ I915_NUM_RINGS ;

__attribute__((used)) static inline u32
intel_ring_sync_index(struct intel_ring_buffer *ring,
        struct intel_ring_buffer *other)
{
 int idx;







 idx = (other - ring) - 1;
 if (idx < 0)
  idx += I915_NUM_RINGS;

 return idx;
}
