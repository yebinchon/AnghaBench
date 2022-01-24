#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct intel_ring_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ read_domains; scalar_t__ write_domain; } ;
struct drm_i915_gem_object {TYPE_1__ base; struct intel_ring_buffer* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_CACHE_NONE ; 
 scalar_t__ I915_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 int FUNC1 (struct drm_i915_gem_object*,scalar_t__,int,int) ; 
 int FUNC2 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_gem_object*,struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ; 

int
FUNC5(struct drm_i915_gem_object *obj,
				     u32 alignment,
				     struct intel_ring_buffer *pipelined)
{
	u32 old_read_domains, old_write_domain;
	int ret;

	if (pipelined != obj->ring) {
		ret = FUNC3(obj, pipelined);
		if (ret)
			return ret;
	}

	/* The display engine is not coherent with the LLC cache on gen6.  As
	 * a result, we make sure that the pinning that is about to occur is
	 * done with uncached PTEs. This is lowest common denominator for all
	 * chipsets.
	 *
	 * However for gen6+, we could do better by using the GFDT bit instead
	 * of uncaching, which would allow us to flush all the LLC-cached data
	 * with that bit in the PTE to main memory with just one PIPE_CONTROL.
	 */
	ret = FUNC2(obj, I915_CACHE_NONE);
	if (ret)
		return ret;

	/* As the user may map the buffer once pinned in the display plane
	 * (e.g. libkms for the bootup splash), we have to ensure that we
	 * always use map_and_fenceable for all scanout buffers.
	 */
	ret = FUNC1(obj, alignment, true, false);
	if (ret)
		return ret;

	FUNC0(obj);

	old_write_domain = obj->base.write_domain;
	old_read_domains = obj->base.read_domains;

	/* It should now be out of any other write domains, and we can update
	 * the domain values for our changes.
	 */
	obj->base.write_domain = 0;
	obj->base.read_domains |= I915_GEM_DOMAIN_GTT;

	FUNC4(obj,
					    old_read_domains,
					    old_write_domain);

	return 0;
}