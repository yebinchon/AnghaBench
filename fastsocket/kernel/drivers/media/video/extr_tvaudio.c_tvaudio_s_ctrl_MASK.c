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
struct CHIPSTATE {int muted; size_t input; int left; int right; int bass; int treble; struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; int /*<<< orphan*/  (* treblefunc ) (int) ;int /*<<< orphan*/  treblereg; int /*<<< orphan*/  (* bassfunc ) (int) ;int /*<<< orphan*/  bassreg; int /*<<< orphan*/  (* volfunc ) (int) ;int /*<<< orphan*/  rightreg; int /*<<< orphan*/  leftreg; int /*<<< orphan*/  inputmask; int /*<<< orphan*/ * inputmap; int /*<<< orphan*/  inputreg; int /*<<< orphan*/  inputmute; } ;
typedef  int __u16 ;

/* Variables and functions */
 int CHIP_HAS_BASSTREBLE ; 
 int CHIP_HAS_INPUTSEL ; 
 int CHIP_HAS_VOLUME ; 
 int EINVAL ; 
 int ERANGE ; 
#define  V4L2_CID_AUDIO_BALANCE 132 
#define  V4L2_CID_AUDIO_BASS 131 
#define  V4L2_CID_AUDIO_MUTE 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct CHIPSTATE*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct CHIPSTATE*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct CHIPSTATE* FUNC10 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *sd,
			    struct v4l2_control *ctrl)
{
	struct CHIPSTATE *chip = FUNC10(sd);
	struct CHIPDESC *desc = chip->desc;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (!(desc->flags & CHIP_HAS_INPUTSEL))
			break;

		if (ctrl->value < 0 || ctrl->value >= 2)
			return -ERANGE;
		chip->muted = ctrl->value;
		if (chip->muted)
			FUNC1(chip,desc->inputreg,desc->inputmute,desc->inputmask);
		else
			FUNC1(chip,desc->inputreg,
					desc->inputmap[chip->input],desc->inputmask);
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
	{
		int volume,balance;

		if (!(desc->flags & CHIP_HAS_VOLUME))
			break;

		volume = FUNC2(chip->left,chip->right);
		if (volume)
			balance=(32768*FUNC3(chip->left,chip->right))/volume;
		else
			balance=32768;

		volume=ctrl->value;
		chip->left = (FUNC3(65536 - balance,32768) * volume) / 32768;
		chip->right = (FUNC3(balance,volume *(__u16)32768)) / 32768;

		FUNC0(chip,desc->leftreg,desc->volfunc(chip->left));
		FUNC0(chip,desc->rightreg,desc->volfunc(chip->right));

		return 0;
	}
	case V4L2_CID_AUDIO_BALANCE:
	{
		int volume, balance;
		if (!(desc->flags & CHIP_HAS_VOLUME))
			break;

		volume = FUNC2(chip->left,chip->right);
		balance = ctrl->value;

		FUNC0(chip,desc->leftreg,desc->volfunc(chip->left));
		FUNC0(chip,desc->rightreg,desc->volfunc(chip->right));

		return 0;
	}
	case V4L2_CID_AUDIO_BASS:
		if (!(desc->flags & CHIP_HAS_BASSTREBLE))
			break;
		chip->bass = ctrl->value;
		FUNC0(chip,desc->bassreg,desc->bassfunc(chip->bass));

		return 0;
	case V4L2_CID_AUDIO_TREBLE:
		if (!(desc->flags & CHIP_HAS_BASSTREBLE))
			break;
		chip->treble = ctrl->value;
		FUNC0(chip,desc->treblereg,desc->treblefunc(chip->treble));

		return 0;
	}
	return -EINVAL;
}