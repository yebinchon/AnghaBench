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
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {int radio; scalar_t__ watch_stereo; } ;

/* Variables and functions */
 struct CHIPSTATE* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd)
{
	struct CHIPSTATE *chip = FUNC0(sd);

	chip->radio = 1;
	chip->watch_stereo = 0;
	/* del_timer(&chip->wt); */
	return 0;
}