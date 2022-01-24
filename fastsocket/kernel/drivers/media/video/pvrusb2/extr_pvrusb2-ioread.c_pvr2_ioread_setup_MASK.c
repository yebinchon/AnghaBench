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
struct pvr2_ioread {int /*<<< orphan*/  mutex; struct pvr2_stream* stream; int /*<<< orphan*/ * buffer_storage; } ;
struct pvr2_buffer {int dummy; } ;

/* Variables and functions */
 unsigned int BUFFER_COUNT ; 
 int /*<<< orphan*/  BUFFER_SIZE ; 
 int /*<<< orphan*/  PVR2_TRACE_START_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_ioread*) ; 
 struct pvr2_buffer* FUNC4 (struct pvr2_stream*,unsigned int) ; 
 scalar_t__ FUNC5 (struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_stream*) ; 
 int FUNC7 (struct pvr2_stream*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct pvr2_ioread*) ; 

int FUNC9(struct pvr2_ioread *cp,struct pvr2_stream *sp)
{
	int ret;
	unsigned int idx;
	struct pvr2_buffer *bp;

	FUNC0(&cp->mutex); do {
		if (cp->stream) {
			FUNC8(PVR2_TRACE_START_STOP,
				   "/*---TRACE_READ---*/"
				   " pvr2_ioread_setup (tear-down) id=%p",cp);
			FUNC3(cp);
			FUNC6(cp->stream);
			if (FUNC5(cp->stream)) {
				FUNC7(cp->stream,0);
			}
			cp->stream = NULL;
		}
		if (sp) {
			FUNC8(PVR2_TRACE_START_STOP,
				   "/*---TRACE_READ---*/"
				   " pvr2_ioread_setup (setup) id=%p",cp);
			FUNC6(sp);
			ret = FUNC7(sp,BUFFER_COUNT);
			if (ret < 0) {
				FUNC1(&cp->mutex);
				return ret;
			}
			for (idx = 0; idx < BUFFER_COUNT; idx++) {
				bp = FUNC4(sp,idx);
				FUNC2(bp,
						       cp->buffer_storage[idx],
						       BUFFER_SIZE);
			}
			cp->stream = sp;
		}
	} while (0); FUNC1(&cp->mutex);

	return 0;
}