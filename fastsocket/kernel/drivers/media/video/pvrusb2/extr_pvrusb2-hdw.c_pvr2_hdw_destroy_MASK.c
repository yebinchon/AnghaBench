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
struct pvr2_hdw {size_t unit_number; struct pvr2_hdw* std_enum_names; struct pvr2_hdw* std_defs; struct pvr2_hdw* mpeg_ctrl_info; struct pvr2_hdw* controls; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * vid_stream; struct pvr2_hdw* fw_buffer; int /*<<< orphan*/  encoder_wait_timer; int /*<<< orphan*/  encoder_run_timer; int /*<<< orphan*/  decoder_stabilization_timer; int /*<<< orphan*/  quiescent_timer; int /*<<< orphan*/ * workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 size_t PVR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC7 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct pvr2_hdw*) ; 
 int /*<<< orphan*/  pvr2_unit_mtx ; 
 struct pvr2_hdw** unit_pointers ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct pvr2_hdw *hdw)
{
	if (!hdw) return;
	FUNC9(PVR2_TRACE_INIT,"pvr2_hdw_destroy: hdw=%p",hdw);
	if (hdw->workqueue) {
		FUNC2(hdw->workqueue);
		FUNC1(hdw->workqueue);
		hdw->workqueue = NULL;
	}
	FUNC0(&hdw->quiescent_timer);
	FUNC0(&hdw->decoder_stabilization_timer);
	FUNC0(&hdw->encoder_run_timer);
	FUNC0(&hdw->encoder_wait_timer);
	if (hdw->fw_buffer) {
		FUNC3(hdw->fw_buffer);
		hdw->fw_buffer = NULL;
	}
	if (hdw->vid_stream) {
		FUNC8(hdw->vid_stream);
		hdw->vid_stream = NULL;
	}
	FUNC7(hdw);
	FUNC10(&hdw->v4l2_dev);
	FUNC6(hdw);
	FUNC4(&pvr2_unit_mtx); do {
		if ((hdw->unit_number >= 0) &&
		    (hdw->unit_number < PVR_NUM) &&
		    (unit_pointers[hdw->unit_number] == hdw)) {
			unit_pointers[hdw->unit_number] = NULL;
		}
	} while (0); FUNC5(&pvr2_unit_mtx);
	FUNC3(hdw->controls);
	FUNC3(hdw->mpeg_ctrl_info);
	FUNC3(hdw->std_defs);
	FUNC3(hdw->std_enum_names);
	FUNC3(hdw);
}