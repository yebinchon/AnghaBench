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
struct amradio_device {int /*<<< orphan*/  muted; scalar_t__ removed; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct amradio_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_control *ctrl)
{
	struct amradio_device *radio = FUNC1(FUNC0(file));

	/* safety check */
	if (radio->removed)
		return -EIO;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		ctrl->value = radio->muted;
		return 0;
	}
	return -EINVAL;
}