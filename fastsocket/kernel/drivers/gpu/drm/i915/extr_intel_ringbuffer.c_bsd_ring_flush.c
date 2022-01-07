
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 int MI_FLUSH ;
 int MI_NOOP ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static int
bsd_ring_flush(struct intel_ring_buffer *ring,
        u32 invalidate_domains,
        u32 flush_domains)
{
 int ret;

 ret = intel_ring_begin(ring, 2);
 if (ret)
  return ret;

 intel_ring_emit(ring, MI_FLUSH);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_advance(ring);
 return 0;
}
