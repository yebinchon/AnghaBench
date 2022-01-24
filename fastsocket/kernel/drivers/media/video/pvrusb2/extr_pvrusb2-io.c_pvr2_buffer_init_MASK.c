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
struct pvr2_stream {int dummy; } ;
struct pvr2_buffer {unsigned int id; int /*<<< orphan*/  purb; int /*<<< orphan*/  list_overhead; int /*<<< orphan*/  state; struct pvr2_stream* stream; int /*<<< orphan*/  signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PVR2_TRACE_BUF_POOL ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_buffer*,char*) ; 
 int /*<<< orphan*/  pvr2_buffer_state_none ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_buffer*,struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pvr2_buffer *bp,
			    struct pvr2_stream *sp,
			    unsigned int id)
{
	FUNC1(bp,0,sizeof(*bp));
	bp->signature = BUFFER_SIG;
	bp->id = id;
	FUNC3(PVR2_TRACE_BUF_POOL,
		   "/*---TRACE_FLOW---*/ bufferInit     %p stream=%p",bp,sp);
	bp->stream = sp;
	bp->state = pvr2_buffer_state_none;
	FUNC0(&bp->list_overhead);
	bp->purb = FUNC4(0,GFP_KERNEL);
	if (! bp->purb) return -ENOMEM;
#ifdef SANITY_CHECK_BUFFERS
	pvr2_buffer_describe(bp,"create");
#endif
	return 0;
}