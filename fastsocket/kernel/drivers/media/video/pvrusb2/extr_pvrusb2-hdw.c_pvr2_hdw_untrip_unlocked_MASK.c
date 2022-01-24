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
struct pvr2_hdw {scalar_t__ flag_tripped; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct pvr2_hdw *hdw)
{
	if (!hdw->flag_tripped) return 0;
	hdw->flag_tripped = 0;
	FUNC0(PVR2_TRACE_ERROR_LEGS,
		   "Clearing driver error statuss");
	return !0;
}