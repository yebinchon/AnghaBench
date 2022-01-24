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
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct file {int dummy; } ;
struct aztech {int /*<<< orphan*/  curvol; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct aztech*,int /*<<< orphan*/ ) ; 
 struct aztech* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			    struct v4l2_control *ctrl)
{
	struct aztech *az = FUNC1(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (ctrl->value)
			FUNC0(az, 0);
		else
			FUNC0(az, az->curvol);
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		FUNC0(az, ctrl->value);
		return 0;
	}
	return -EINVAL;
}