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
struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; scalar_t__ removed; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  V4L2_TUNER_MODE_MONO 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int /*<<< orphan*/  WANT_MONO ; 
 int /*<<< orphan*/  WANT_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct amradio_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_tuner *v)
{
	struct amradio_device *radio = FUNC3(FUNC2(file));
	int retval;

	/* safety check */
	if (radio->removed)
		return -EIO;

	if (v->index > 0)
		return -EINVAL;

	/* mono/stereo selector */
	switch (v->audmode) {
	case V4L2_TUNER_MODE_MONO:
		retval = FUNC1(radio, WANT_MONO);
		if (retval < 0)
			FUNC0(&radio->videodev->dev,
				"set mono failed\n");
		break;
	case V4L2_TUNER_MODE_STEREO:
		retval = FUNC1(radio, WANT_STEREO);
		if (retval < 0)
			FUNC0(&radio->videodev->dev,
				"set stereo failed\n");
		break;
	default:
		return -EINVAL;
	}

	return 0;
}