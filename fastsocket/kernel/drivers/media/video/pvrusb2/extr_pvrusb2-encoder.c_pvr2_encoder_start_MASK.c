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
struct pvr2_hdw {scalar_t__ input_val; int active_stream_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_MUTE_VIDEO ; 
 int /*<<< orphan*/  CX2341X_ENC_START_CAPTURE ; 
 scalar_t__ PVR2_CVAL_INPUT_RADIO ; 
#define  pvr2_config_mpeg 129 
#define  pvr2_config_vbi 128 
 int FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*,int,int) ; 

int FUNC2(struct pvr2_hdw *hdw)
{
	int status;

	/* unmask some interrupts */
	FUNC1(hdw, 0x0048, 0xbfffffff);

	FUNC0(hdw,CX2341X_ENC_MUTE_VIDEO,1,
			  hdw->input_val == PVR2_CVAL_INPUT_RADIO ? 1 : 0);

	switch (hdw->active_stream_type) {
	case pvr2_config_vbi:
		status = FUNC0(hdw,CX2341X_ENC_START_CAPTURE,2,
					   0x01,0x14);
		break;
	case pvr2_config_mpeg:
		status = FUNC0(hdw,CX2341X_ENC_START_CAPTURE,2,
					   0,0x13);
		break;
	default: /* Unhandled cases for now */
		status = FUNC0(hdw,CX2341X_ENC_START_CAPTURE,2,
					   0,0x13);
		break;
	}
	return status;
}