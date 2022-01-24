#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {TYPE_3__* ops; } ;
struct routing_scheme {size_t cnt; int /*<<< orphan*/ * def; } ;
struct pvr2_hdw {size_t input_val; TYPE_1__* hdw_desc; scalar_t__ force_dirty; scalar_t__ input_dirty; } ;
struct TYPE_6__ {TYPE_2__* audio; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* s_routing ) (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {unsigned int signal_routing_scheme; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct routing_scheme**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSP_SC_IN_DSP_SCART1 ; 
 int /*<<< orphan*/  PVR2_TRACE_CHIPS ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct routing_scheme** routing_schemes ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct pvr2_hdw *hdw, struct v4l2_subdev *sd)
{
	if (hdw->input_dirty || hdw->force_dirty) {
		const struct routing_scheme *sp;
		unsigned int sid = hdw->hdw_desc->signal_routing_scheme;
		u32 input;

		FUNC2(PVR2_TRACE_CHIPS, "subdev msp3400 v4l2 set_stereo");
		sp = (sid < FUNC0(routing_schemes)) ?
			routing_schemes[sid] : NULL;

		if ((sp != NULL) &&
		    (hdw->input_val >= 0) &&
		    (hdw->input_val < sp->cnt)) {
			input = sp->def[hdw->input_val];
		} else {
			FUNC2(PVR2_TRACE_ERROR_LEGS,
				   "*** WARNING *** subdev msp3400 set_input:"
				   " Invalid routing scheme (%u)"
				   " and/or input (%d)",
				   sid, hdw->input_val);
			return;
		}
		sd->ops->audio->s_routing(sd, input,
			FUNC1(MSP_SC_IN_DSP_SCART1), 0);
	}
}