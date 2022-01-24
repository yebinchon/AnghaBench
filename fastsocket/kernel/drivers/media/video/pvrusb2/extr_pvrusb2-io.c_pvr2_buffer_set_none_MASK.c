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
struct pvr2_stream {int /*<<< orphan*/  list_lock; } ;
struct pvr2_buffer {int /*<<< orphan*/  state; struct pvr2_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  PVR2_TRACE_BUF_FLOW ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvr2_buffer_state_none ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct pvr2_buffer *bp)
{
	unsigned long irq_flags;
	struct pvr2_stream *sp;
	FUNC0(bp);
	sp = bp->stream;
	FUNC3(PVR2_TRACE_BUF_FLOW,
		   "/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s",
		   bp,
		   FUNC2(bp->state),
		   FUNC2(pvr2_buffer_state_none));
	FUNC4(&sp->list_lock,irq_flags);
	FUNC1(bp);
	FUNC5(&sp->list_lock,irq_flags);
}