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
struct typhoon {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC1 (struct typhoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct typhoon*) ; 
 struct typhoon* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void *priv,
					struct v4l2_control *ctrl)
{
	struct typhoon *dev = FUNC3(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (ctrl->value)
			FUNC0(dev);
		else
			FUNC2(dev);
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		FUNC1(dev, ctrl->value);
		return 0;
	}
	return -EINVAL;
}