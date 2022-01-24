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
struct TYPE_2__ {int signal; } ;
struct pvr2_hdw {TYPE_1__ tuner_signal_info; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*) ; 

__attribute__((used)) static int FUNC1(struct pvr2_ctrl *cptr,int *vp)
{
	struct pvr2_hdw *hdw = cptr->hdw;
	FUNC0(hdw);
	*vp = hdw->tuner_signal_info.signal;
	return 0;
}