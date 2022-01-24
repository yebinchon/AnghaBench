#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_queryctrl {scalar_t__ id; } ;
struct TYPE_2__ {struct v4l2_queryctrl v; } ;

/* Variables and functions */
 int CX23885_CTLS ; 
 int EINVAL ; 
 scalar_t__ V4L2_CID_BASE ; 
 scalar_t__ V4L2_CID_LASTP1 ; 
 TYPE_1__* cx23885_ctls ; 
 struct v4l2_queryctrl no_ctl ; 

__attribute__((used)) static int FUNC0(struct v4l2_queryctrl *qctrl)
{
	int i;

	if (qctrl->id < V4L2_CID_BASE ||
	    qctrl->id >= V4L2_CID_LASTP1)
		return -EINVAL;
	for (i = 0; i < CX23885_CTLS; i++)
		if (cx23885_ctls[i].v.id == qctrl->id)
			break;
	if (i == CX23885_CTLS) {
		*qctrl = no_ctl;
		return 0;
	}
	*qctrl = cx23885_ctls[i].v;
	return 0;
}