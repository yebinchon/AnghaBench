#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {struct pvr2_v4l2_fh* input_map; TYPE_6__ channel; struct pvr2_v4l2* vhead; TYPE_2__* vprev; TYPE_5__* vnext; int /*<<< orphan*/  prio; int /*<<< orphan*/ * rhp; } ;
struct TYPE_10__ {TYPE_3__* mc_head; } ;
struct pvr2_v4l2 {TYPE_5__* vfirst; TYPE_4__ channel; TYPE_2__* vlast; int /*<<< orphan*/  prio; } ;
struct pvr2_stream {int dummy; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_11__ {TYPE_2__* vprev; } ;
struct TYPE_9__ {scalar_t__ disconnect_flag; } ;
struct TYPE_8__ {TYPE_5__* vnext; } ;
struct TYPE_7__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_OPEN_CLOSE ; 
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pvr2_stream* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct pvr2_v4l2_fh *fhp = file->private_data;
	struct pvr2_v4l2 *vp = fhp->vhead;
	struct pvr2_hdw *hdw = fhp->channel.mc_head->hdw;

	FUNC6(PVR2_TRACE_OPEN_CLOSE,"pvr2_v4l2_release");

	if (fhp->rhp) {
		struct pvr2_stream *sp;
		FUNC2(hdw,0);
		sp = FUNC4(fhp->rhp);
		if (sp) FUNC5(sp,NULL,NULL);
		FUNC3(fhp->rhp);
		fhp->rhp = NULL;
	}

	FUNC8(&vp->prio, fhp->prio);
	file->private_data = NULL;

	if (fhp->vnext) {
		fhp->vnext->vprev = fhp->vprev;
	} else {
		vp->vlast = fhp->vprev;
	}
	if (fhp->vprev) {
		fhp->vprev->vnext = fhp->vnext;
	} else {
		vp->vfirst = fhp->vnext;
	}
	fhp->vnext = NULL;
	fhp->vprev = NULL;
	fhp->vhead = NULL;
	FUNC1(&fhp->channel);
	FUNC6(PVR2_TRACE_STRUCT,
		   "Destroying pvr_v4l2_fh id=%p",fhp);
	if (fhp->input_map) {
		FUNC0(fhp->input_map);
		fhp->input_map = NULL;
	}
	FUNC0(fhp);
	if (vp->channel.mc_head->disconnect_flag && !vp->vfirst) {
		FUNC7(vp);
	}
	return 0;
}