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
struct maxiradio {int /*<<< orphan*/  lock; int /*<<< orphan*/  freq; int /*<<< orphan*/  muted; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct maxiradio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct maxiradio*,int /*<<< orphan*/ ) ; 
 struct maxiradio* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
		struct v4l2_control *ctrl)
{
	struct maxiradio *dev = FUNC4(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		FUNC0(&dev->lock);
		dev->muted = ctrl->value;
		if (dev->muted)
			FUNC3(dev, 0);
		else
			FUNC2(dev, dev->freq);
		FUNC1(&dev->lock);
		return 0;
	}

	return -EINVAL;
}