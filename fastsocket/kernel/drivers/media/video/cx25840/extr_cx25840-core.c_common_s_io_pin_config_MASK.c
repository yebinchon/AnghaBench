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
struct v4l2_subdev_io_pin_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,size_t,struct v4l2_subdev_io_pin_config*) ; 
 scalar_t__ FUNC1 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, size_t n,
				      struct v4l2_subdev_io_pin_config *pincfg)
{
	struct cx25840_state *state = FUNC2(sd);

	if (FUNC1(state))
		return FUNC0(sd, n, pincfg);
	return 0;
}