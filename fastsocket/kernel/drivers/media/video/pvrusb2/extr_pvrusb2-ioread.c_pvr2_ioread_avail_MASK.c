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
struct pvr2_ioread {int sync_state; int spigot_open; int /*<<< orphan*/  stream; scalar_t__ stream_running; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int BUFFER_COUNT ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  PVR2_TRACE_DATA_FLOW ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_ioread*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC3(struct pvr2_ioread *cp)
{
	int ret;
	if (!(cp->enabled)) {
		// Stream is not enabled; so this is an I/O error
		return -EIO;
	}

	if (cp->sync_state == 1) {
		FUNC0(cp);
		if (cp->sync_state == 1) return -EAGAIN;
	}

	ret = 0;
	if (cp->stream_running) {
		if (!FUNC1(cp->stream)) {
			// No data available at all right now.
			ret = -EAGAIN;
		}
	} else {
		if (FUNC1(cp->stream) < BUFFER_COUNT/2) {
			// Haven't buffered up enough yet; try again later
			ret = -EAGAIN;
		}
	}

	if ((!(cp->spigot_open)) != (!(ret == 0))) {
		cp->spigot_open = (ret == 0);
		FUNC2(PVR2_TRACE_DATA_FLOW,
			   "/*---TRACE_READ---*/ data is %s",
			   cp->spigot_open ? "available" : "pending");
	}

	return ret;
}