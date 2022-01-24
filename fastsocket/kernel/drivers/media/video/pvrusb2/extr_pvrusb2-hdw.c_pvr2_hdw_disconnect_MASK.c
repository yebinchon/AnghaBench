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
struct pvr2_hdw {int /*<<< orphan*/  big_lock; int /*<<< orphan*/  ctl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_hdw*) ; 

void FUNC4(struct pvr2_hdw *hdw)
{
	FUNC3(PVR2_TRACE_INIT,"pvr2_hdw_disconnect(hdw=%p)",hdw);
	FUNC1(hdw->big_lock);
	FUNC1(hdw->ctl_lock);
	FUNC2(hdw);
	FUNC0(hdw->ctl_lock);
	FUNC0(hdw->big_lock);
}