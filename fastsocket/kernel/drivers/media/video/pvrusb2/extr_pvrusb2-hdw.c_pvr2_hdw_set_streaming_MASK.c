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
struct pvr2_hdw {int state_pipeline_req; int master_state; int /*<<< orphan*/  big_lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PVR2_STATE_READY ; 
 int PVR2_STATE_RUN ; 
 int /*<<< orphan*/  PVR2_TRACE_START_STOP ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 
 int FUNC4 (struct pvr2_hdw*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC6(struct pvr2_hdw *hdw,int enable_flag)
{
	int ret,st;
	FUNC1(hdw->big_lock); do {
		FUNC3(hdw);
		if ((!enable_flag) != !(hdw->state_pipeline_req)) {
			hdw->state_pipeline_req = enable_flag != 0;
			FUNC5(PVR2_TRACE_START_STOP,
				   "/*--TRACE_STREAM--*/ %s",
				   enable_flag ? "enable" : "disable");
		}
		FUNC2(hdw);
	} while (0); FUNC0(hdw->big_lock);
	if ((ret = FUNC4(hdw,0)) < 0) return ret;
	if (enable_flag) {
		while ((st = hdw->master_state) != PVR2_STATE_RUN) {
			if (st != PVR2_STATE_READY) return -EIO;
			if ((ret = FUNC4(hdw,st)) < 0) return ret;
		}
	}
	return 0;
}