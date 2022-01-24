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
struct v4l2_control {int id; int value; } ;
struct CHIPSTATE {int muted; int bass; int treble; int /*<<< orphan*/  right; int /*<<< orphan*/  left; struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; } ;

/* Variables and functions */
 int CHIP_HAS_BASSTREBLE ; 
 int CHIP_HAS_INPUTSEL ; 
 int CHIP_HAS_VOLUME ; 
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 132 
#define  V4L2_CID_AUDIO_BASS 131 
#define  V4L2_CID_AUDIO_MUTE 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct CHIPSTATE* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			    struct v4l2_control *ctrl)
{
	struct CHIPSTATE *chip = FUNC2(sd);
	struct CHIPDESC *desc = chip->desc;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (!(desc->flags & CHIP_HAS_INPUTSEL))
			break;
		ctrl->value=chip->muted;
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		if (!(desc->flags & CHIP_HAS_VOLUME))
			break;
		ctrl->value = FUNC0(chip->left,chip->right);
		return 0;
	case V4L2_CID_AUDIO_BALANCE:
	{
		int volume;
		if (!(desc->flags & CHIP_HAS_VOLUME))
			break;
		volume = FUNC0(chip->left,chip->right);
		if (volume)
			ctrl->value=(32768*FUNC1(chip->left,chip->right))/volume;
		else
			ctrl->value=32768;
		return 0;
	}
	case V4L2_CID_AUDIO_BASS:
		if (!(desc->flags & CHIP_HAS_BASSTREBLE))
			break;
		ctrl->value = chip->bass;
		return 0;
	case V4L2_CID_AUDIO_TREBLE:
		if (!(desc->flags & CHIP_HAS_BASSTREBLE))
			break;
		ctrl->value = chip->treble;
		return 0;
	}
	return -EINVAL;
}