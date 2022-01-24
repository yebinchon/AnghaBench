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
struct v4l2_streamparm {int dummy; } ;
struct soc_camera_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  s_parm ; 
 struct v4l2_subdev* FUNC0 (struct soc_camera_device*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC2(struct soc_camera_device *icd,
			  struct v4l2_streamparm *parm)
{
	struct v4l2_subdev *sd = FUNC0(icd);
	return FUNC1(sd, video, s_parm, parm);
}