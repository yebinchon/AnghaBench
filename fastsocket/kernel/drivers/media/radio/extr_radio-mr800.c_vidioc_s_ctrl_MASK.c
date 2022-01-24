#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; scalar_t__ removed; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_START ; 
 int /*<<< orphan*/  AMRADIO_STOP ; 
 int EINVAL ; 
 int EIO ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct amradio_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_control *ctrl)
{
	struct amradio_device *radio = FUNC3(FUNC2(file));
	int retval;

	/* safety check */
	if (radio->removed)
		return -EIO;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (ctrl->value) {
			retval = FUNC1(radio, AMRADIO_STOP);
			if (retval < 0) {
				FUNC0(&radio->videodev->dev,
					"amradio_stop failed\n");
				return -1;
			}
		} else {
			retval = FUNC1(radio, AMRADIO_START);
			if (retval < 0) {
				FUNC0(&radio->videodev->dev,
					"amradio_start failed\n");
				return -1;
			}
		}
		return 0;
	}
	return -EINVAL;
}