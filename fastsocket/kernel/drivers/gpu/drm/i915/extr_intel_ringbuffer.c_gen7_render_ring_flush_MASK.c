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
typedef  scalar_t__ u32 ;
struct pipe_control {scalar_t__ gtt_offset; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PIPE_CONTROL_CONST_CACHE_INVALIDATE ; 
 scalar_t__ PIPE_CONTROL_CS_STALL ; 
 scalar_t__ PIPE_CONTROL_DEPTH_CACHE_FLUSH ; 
 scalar_t__ PIPE_CONTROL_GLOBAL_GTT_IVB ; 
 scalar_t__ PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ; 
 scalar_t__ PIPE_CONTROL_QW_WRITE ; 
 scalar_t__ PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ; 
 scalar_t__ PIPE_CONTROL_STATE_CACHE_INVALIDATE ; 
 scalar_t__ PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ; 
 scalar_t__ PIPE_CONTROL_TLB_INVALIDATE ; 
 scalar_t__ PIPE_CONTROL_VF_CACHE_INVALIDATE ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*) ; 
 int FUNC3 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ring_buffer*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct intel_ring_buffer *ring,
		       u32 invalidate_domains, u32 flush_domains)
{
	u32 flags = 0;
	struct pipe_control *pc = ring->private;
	u32 scratch_addr = pc->gtt_offset + 128;
	int ret;

	/*
	 * Ensure that any following seqno writes only happen when the render
	 * cache is indeed flushed.
	 *
	 * Workaround: 4th PIPE_CONTROL command (except the ones with only
	 * read-cache invalidate bits set) must have the CS_STALL bit set. We
	 * don't try to be clever and just set it unconditionally.
	 */
	flags |= PIPE_CONTROL_CS_STALL;

	/* Just flush everything.  Experiments have shown that reducing the
	 * number of bits based on the write domains has little performance
	 * impact.
	 */
	if (flush_domains) {
		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
	}
	if (invalidate_domains) {
		flags |= PIPE_CONTROL_TLB_INVALIDATE;
		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
		/*
		 * TLB invalidate requires a post-sync write.
		 */
		flags |= PIPE_CONTROL_QW_WRITE;
		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;

		/* Workaround: we must issue a pipe_control with CS-stall bit
		 * set before a pipe_control command that has the state cache
		 * invalidate bit set. */
		FUNC1(ring);
	}

	ret = FUNC3(ring, 4);
	if (ret)
		return ret;

	FUNC4(ring, FUNC0(4));
	FUNC4(ring, flags);
	FUNC4(ring, scratch_addr);
	FUNC4(ring, 0);
	FUNC2(ring);

	return 0;
}