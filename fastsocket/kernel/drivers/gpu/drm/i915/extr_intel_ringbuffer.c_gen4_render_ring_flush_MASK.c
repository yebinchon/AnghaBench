#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct intel_ring_buffer {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int I915_GEM_DOMAIN_COMMAND ; 
 int I915_GEM_DOMAIN_INSTRUCTION ; 
 int I915_GEM_DOMAIN_RENDER ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int MI_EXE_FLUSH ; 
 int MI_FLUSH ; 
 int MI_INVALIDATE_ISP ; 
 int MI_NOOP ; 
 int MI_NO_WRITE_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*) ; 
 int FUNC3 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC5(struct intel_ring_buffer *ring,
		       u32	invalidate_domains,
		       u32	flush_domains)
{
	struct drm_device *dev = ring->dev;
	u32 cmd;
	int ret;

	/*
	 * read/write caches:
	 *
	 * I915_GEM_DOMAIN_RENDER is always invalidated, but is
	 * only flushed if MI_NO_WRITE_FLUSH is unset.  On 965, it is
	 * also flushed at 2d versus 3d pipeline switches.
	 *
	 * read-only caches:
	 *
	 * I915_GEM_DOMAIN_SAMPLER is flushed on pre-965 if
	 * MI_READ_FLUSH is set, and is always flushed on 965.
	 *
	 * I915_GEM_DOMAIN_COMMAND may not exist?
	 *
	 * I915_GEM_DOMAIN_INSTRUCTION, which exists on 965, is
	 * invalidated when MI_EXE_FLUSH is set.
	 *
	 * I915_GEM_DOMAIN_VERTEX, which exists on 965, is
	 * invalidated with every MI_FLUSH.
	 *
	 * TLBs:
	 *
	 * On 965, TLBs associated with I915_GEM_DOMAIN_COMMAND
	 * and I915_GEM_DOMAIN_CPU in are invalidated at PTE write and
	 * I915_GEM_DOMAIN_RENDER and I915_GEM_DOMAIN_SAMPLER
	 * are flushed at any MI_FLUSH.
	 */

	cmd = MI_FLUSH | MI_NO_WRITE_FLUSH;
	if ((invalidate_domains|flush_domains) & I915_GEM_DOMAIN_RENDER)
		cmd &= ~MI_NO_WRITE_FLUSH;
	if (invalidate_domains & I915_GEM_DOMAIN_INSTRUCTION)
		cmd |= MI_EXE_FLUSH;

	if (invalidate_domains & I915_GEM_DOMAIN_COMMAND &&
	    (FUNC0(dev) || FUNC1(dev)))
		cmd |= MI_INVALIDATE_ISP;

	ret = FUNC3(ring, 2);
	if (ret)
		return ret;

	FUNC4(ring, cmd);
	FUNC4(ring, MI_NOOP);
	FUNC2(ring);

	return 0;
}