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
struct rtrack {int /*<<< orphan*/  curvol; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct rtrack*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtrack*,int /*<<< orphan*/ ) ; 
 struct rtrack* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
					struct v4l2_control *ctrl)
{
	struct rtrack *rt = FUNC2(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (ctrl->value)
			FUNC0(rt);
		else
			FUNC1(rt, rt->curvol);
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		FUNC1(rt, ctrl->value);
		return 0;
	}
	return -EINVAL;
}