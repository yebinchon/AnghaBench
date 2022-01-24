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
typedef  int uint32_t ;
typedef  int u32 ;
struct intel_ring_buffer {int dummy; } ;

/* Variables and functions */
 int I915_GEM_GPU_DOMAINS ; 
 int I915_GEM_HWS_SCRATCH_ADDR ; 
 int MI_FLUSH_DW ; 
 int MI_FLUSH_DW_OP_STOREDW ; 
 int MI_FLUSH_DW_STORE_INDEX ; 
 int MI_FLUSH_DW_USE_GTT ; 
 int MI_INVALIDATE_BSD ; 
 int MI_INVALIDATE_TLB ; 
 int MI_NOOP ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int FUNC3(struct intel_ring_buffer *ring,
			   u32 invalidate, u32 flush)
{
	uint32_t cmd;
	int ret;

	ret = FUNC1(ring, 4);
	if (ret)
		return ret;

	cmd = MI_FLUSH_DW;
	/*
	 * Bspec vol 1c.5 - video engine command streamer:
	 * "If ENABLED, all TLBs will be invalidated once the flush
	 * operation is complete. This bit is only valid when the
	 * Post-Sync Operation field is a value of 1h or 3h."
	 */
	if (invalidate & I915_GEM_GPU_DOMAINS)
		cmd |= MI_INVALIDATE_TLB | MI_INVALIDATE_BSD |
			MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;
	FUNC2(ring, cmd);
	FUNC2(ring, I915_GEM_HWS_SCRATCH_ADDR | MI_FLUSH_DW_USE_GTT);
	FUNC2(ring, 0);
	FUNC2(ring, MI_NOOP);
	FUNC0(ring);
	return 0;
}