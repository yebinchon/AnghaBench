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
struct pipe_control {int gtt_offset; } ;
struct intel_ring_buffer {int outstanding_lazy_request; struct pipe_control* private; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*,int) ; 
 int PIPE_CONTROL_GLOBAL_GTT ; 
 int PIPE_CONTROL_NOTIFY ; 
 int PIPE_CONTROL_QW_WRITE ; 
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_WRITE_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*) ; 
 int FUNC3 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC5(struct intel_ring_buffer *ring)
{
	struct pipe_control *pc = ring->private;
	u32 scratch_addr = pc->gtt_offset + 128;
	int ret;

	/* For Ironlake, MI_USER_INTERRUPT was deprecated and apparently
	 * incoherent with writes to memory, i.e. completely fubar,
	 * so we need to use PIPE_NOTIFY instead.
	 *
	 * However, we also need to workaround the qword write
	 * incoherence by flushing the 6 PIPE_NOTIFY buffers out to
	 * memory before requesting an interrupt.
	 */
	ret = FUNC3(ring, 32);
	if (ret)
		return ret;

	FUNC4(ring, FUNC0(4) | PIPE_CONTROL_QW_WRITE |
			PIPE_CONTROL_WRITE_FLUSH |
			PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE);
	FUNC4(ring, pc->gtt_offset | PIPE_CONTROL_GLOBAL_GTT);
	FUNC4(ring, ring->outstanding_lazy_request);
	FUNC4(ring, 0);
	FUNC1(ring, scratch_addr);
	scratch_addr += 128; /* write to separate cachelines */
	FUNC1(ring, scratch_addr);
	scratch_addr += 128;
	FUNC1(ring, scratch_addr);
	scratch_addr += 128;
	FUNC1(ring, scratch_addr);
	scratch_addr += 128;
	FUNC1(ring, scratch_addr);
	scratch_addr += 128;
	FUNC1(ring, scratch_addr);

	FUNC4(ring, FUNC0(4) | PIPE_CONTROL_QW_WRITE |
			PIPE_CONTROL_WRITE_FLUSH |
			PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE |
			PIPE_CONTROL_NOTIFY);
	FUNC4(ring, pc->gtt_offset | PIPE_CONTROL_GLOBAL_GTT);
	FUNC4(ring, ring->outstanding_lazy_request);
	FUNC4(ring, 0);
	FUNC2(ring);

	return 0;
}