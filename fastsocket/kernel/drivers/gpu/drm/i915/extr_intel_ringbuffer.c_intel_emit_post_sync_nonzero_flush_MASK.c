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
struct intel_ring_buffer {struct pipe_control* private; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MI_NOOP ; 
 int PIPE_CONTROL_CS_STALL ; 
 int PIPE_CONTROL_GLOBAL_GTT ; 
 int PIPE_CONTROL_QW_WRITE ; 
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*) ; 
 int FUNC2 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC4(struct intel_ring_buffer *ring)
{
	struct pipe_control *pc = ring->private;
	u32 scratch_addr = pc->gtt_offset + 128;
	int ret;


	ret = FUNC2(ring, 6);
	if (ret)
		return ret;

	FUNC3(ring, FUNC0(5));
	FUNC3(ring, PIPE_CONTROL_CS_STALL |
			PIPE_CONTROL_STALL_AT_SCOREBOARD);
	FUNC3(ring, scratch_addr | PIPE_CONTROL_GLOBAL_GTT); /* address */
	FUNC3(ring, 0); /* low dword */
	FUNC3(ring, 0); /* high dword */
	FUNC3(ring, MI_NOOP);
	FUNC1(ring);

	ret = FUNC2(ring, 6);
	if (ret)
		return ret;

	FUNC3(ring, FUNC0(5));
	FUNC3(ring, PIPE_CONTROL_QW_WRITE);
	FUNC3(ring, scratch_addr | PIPE_CONTROL_GLOBAL_GTT); /* address */
	FUNC3(ring, 0);
	FUNC3(ring, 0);
	FUNC3(ring, MI_NOOP);
	FUNC1(ring);

	return 0;
}