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
struct intel_ring_buffer {struct drm_i915_gem_object* private; } ;
struct drm_i915_gem_object {int gtt_offset; } ;

/* Variables and functions */
 int BLT_DEPTH_32 ; 
 int BLT_ROP_GXCOPY ; 
 int FUNC0 (int,int) ; 
 int ENOSPC ; 
 int I830_BATCH_LIMIT ; 
 unsigned int I915_DISPATCH_PINNED ; 
 unsigned int I915_DISPATCH_SECURE ; 
 int MI_BATCH_BUFFER ; 
 int MI_BATCH_NON_SECURE ; 
 int MI_FLUSH ; 
 int MI_NOOP ; 
 int XY_SRC_COPY_BLT_CMD ; 
 int XY_SRC_COPY_BLT_WRITE_ALPHA ; 
 int XY_SRC_COPY_BLT_WRITE_RGB ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*) ; 
 int FUNC2 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC4(struct intel_ring_buffer *ring,
				u32 offset, u32 len,
				unsigned flags)
{
	int ret;

	if (flags & I915_DISPATCH_PINNED) {
		ret = FUNC2(ring, 4);
		if (ret)
			return ret;

		FUNC3(ring, MI_BATCH_BUFFER);
		FUNC3(ring, offset | (flags & I915_DISPATCH_SECURE ? 0 : MI_BATCH_NON_SECURE));
		FUNC3(ring, offset + len - 8);
		FUNC3(ring, MI_NOOP);
		FUNC1(ring);
	} else {
		struct drm_i915_gem_object *obj = ring->private;
		u32 cs_offset = obj->gtt_offset;

		if (len > I830_BATCH_LIMIT)
			return -ENOSPC;

		ret = FUNC2(ring, 9+3);
		if (ret)
			return ret;
		/* Blit the batch (which has now all relocs applied) to the stable batch
		 * scratch bo area (so that the CS never stumbles over its tlb
		 * invalidation bug) ... */
		FUNC3(ring, XY_SRC_COPY_BLT_CMD |
				XY_SRC_COPY_BLT_WRITE_ALPHA |
				XY_SRC_COPY_BLT_WRITE_RGB);
		FUNC3(ring, BLT_DEPTH_32 | BLT_ROP_GXCOPY | 4096);
		FUNC3(ring, 0);
		FUNC3(ring, (FUNC0(len, 4096) << 16) | 1024);
		FUNC3(ring, cs_offset);
		FUNC3(ring, 0);
		FUNC3(ring, 4096);
		FUNC3(ring, offset);
		FUNC3(ring, MI_FLUSH);

		/* ... and execute it. */
		FUNC3(ring, MI_BATCH_BUFFER);
		FUNC3(ring, cs_offset | (flags & I915_DISPATCH_SECURE ? 0 : MI_BATCH_NON_SECURE));
		FUNC3(ring, cs_offset + len - 8);
		FUNC1(ring);
	}

	return 0;
}