
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int I915_GEM_DOMAIN_COMMAND ;
 int I915_GEM_DOMAIN_INSTRUCTION ;
 int I915_GEM_DOMAIN_RENDER ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 int MI_EXE_FLUSH ;
 int MI_FLUSH ;
 int MI_INVALIDATE_ISP ;
 int MI_NOOP ;
 int MI_NO_WRITE_FLUSH ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
gen4_render_ring_flush(struct intel_ring_buffer *ring,
         u32 invalidate_domains,
         u32 flush_domains)
{
 struct drm_device *dev = ring->dev;
 u32 cmd;
 int ret;
 cmd = MI_FLUSH | MI_NO_WRITE_FLUSH;
 if ((invalidate_domains|flush_domains) & I915_GEM_DOMAIN_RENDER)
  cmd &= ~MI_NO_WRITE_FLUSH;
 if (invalidate_domains & I915_GEM_DOMAIN_INSTRUCTION)
  cmd |= MI_EXE_FLUSH;

 if (invalidate_domains & I915_GEM_DOMAIN_COMMAND &&
     (IS_G4X(dev) || IS_GEN5(dev)))
  cmd |= MI_INVALIDATE_ISP;

 ret = intel_ring_begin(ring, 2);
 if (ret)
  return ret;

 intel_ring_emit(ring, cmd);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_advance(ring);

 return 0;
}
