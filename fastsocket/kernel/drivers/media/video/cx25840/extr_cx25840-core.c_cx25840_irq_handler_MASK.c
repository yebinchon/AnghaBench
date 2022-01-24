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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 status,
			       bool *handled)
{
	struct cx25840_state *state = FUNC2(sd);

	*handled = false;

	/* Only support the CX2388[578] AV Core for now */
	if (FUNC1(state))
		return FUNC0(sd, status, handled);

	return -ENODEV;
}