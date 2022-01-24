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
struct pvr2_hdw {scalar_t__ flag_ok; scalar_t__ vid_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

void FUNC4(struct pvr2_hdw *hdw)
{
	if (!hdw->flag_ok) return;
	FUNC2(PVR2_TRACE_ERROR_LEGS,
		   "Device being rendered inoperable");
	if (hdw->vid_stream) {
		FUNC1(hdw->vid_stream,NULL,0,0);
	}
	hdw->flag_ok = 0;
	FUNC3("flag_ok",hdw->flag_ok);
	FUNC0(hdw);
}