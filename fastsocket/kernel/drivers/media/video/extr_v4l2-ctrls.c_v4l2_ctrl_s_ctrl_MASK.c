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
struct v4l2_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct v4l2_ctrl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl*) ; 

int FUNC3(struct v4l2_ctrl *ctrl, s32 val)
{
	/* It's a driver bug if this happens. */
	FUNC0(!FUNC2(ctrl));
	return FUNC1(ctrl, &val);
}