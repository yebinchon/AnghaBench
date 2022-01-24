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
struct pvr2_hdw {int enc_cur_valid; int /*<<< orphan*/  enc_ctl_state; int /*<<< orphan*/  enc_cur_state; } ;
struct cx2341x_mpeg_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pvr2_encoder_cmd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(struct pvr2_hdw *hdw)
{
	int ret;
	ret = FUNC0(hdw,pvr2_encoder_cmd,
			     (hdw->enc_cur_valid ? &hdw->enc_cur_state : NULL),
			     &hdw->enc_ctl_state);
	if (ret) {
		FUNC2(PVR2_TRACE_ERROR_LEGS,
			   "Error from cx2341x module code=%d",ret);
	} else {
		FUNC1(&hdw->enc_cur_state,&hdw->enc_ctl_state,
		       sizeof(struct cx2341x_mpeg_params));
		hdw->enc_cur_valid = !0;
	}
	return ret;
}