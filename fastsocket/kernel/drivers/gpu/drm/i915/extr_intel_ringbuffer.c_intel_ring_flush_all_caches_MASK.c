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
struct intel_ring_buffer {int gpu_caches_dirty; int (* flush ) (struct intel_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  I915_GEM_GPU_DOMAINS ; 
 int FUNC0 (struct intel_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct intel_ring_buffer *ring)
{
	int ret;

	if (!ring->gpu_caches_dirty)
		return 0;

	ret = ring->flush(ring, 0, I915_GEM_GPU_DOMAINS);
	if (ret)
		return ret;

	FUNC1(ring, 0, I915_GEM_GPU_DOMAINS);

	ring->gpu_caches_dirty = false;
	return 0;
}