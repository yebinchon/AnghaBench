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
struct tda9875 {int lvol; int rvol; int bass; int treble; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 131 
#define  V4L2_CID_AUDIO_BASS 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 struct tda9875* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct tda9875 *t = FUNC3(sd);
	int chvol = 0, volume = 0, balance = 0, left, right;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_VOLUME:
		left = (t->lvol+84)*606;
		right = (t->rvol+84)*606;

		volume = FUNC0(left,right);
		balance = (32768*FUNC1(left,right))/
			      (volume ? volume : 1);
		balance =(left<right)?
			(65535-balance) : balance;

		volume = ctrl->value;

		chvol=1;
		break;
	case V4L2_CID_AUDIO_BALANCE:
		left = (t->lvol+84)*606;
		right = (t->rvol+84)*606;

		volume=FUNC0(left,right);

		balance = ctrl->value;

		chvol=1;
		break;
	case V4L2_CID_AUDIO_BASS:
		t->bass = ((ctrl->value/2400)-12) & 0xff;
		if (t->bass > 15)
			t->bass = 15;
		if (t->bass < -12)
			t->bass = -12 & 0xff;
		break;
	case V4L2_CID_AUDIO_TREBLE:
		t->treble = ((ctrl->value/2700)-12) & 0xff;
		if (t->treble > 12)
			t->treble = 12;
		if (t->treble < -12)
			t->treble = -12 & 0xff;
		break;
	default:
		return -EINVAL;
	}

	if (chvol) {
		left = (FUNC1(65536 - balance,32768) *
			volume) / 32768;
		right = (FUNC1(balance,32768) *
				volume) / 32768;
		t->lvol = ((left/606)-84) & 0xff;
		if (t->lvol > 24)
			t->lvol = 24;
		if (t->lvol < -84)
			t->lvol = -84 & 0xff;

		t->rvol = ((right/606)-84) & 0xff;
		if (t->rvol > 24)
			t->rvol = 24;
		if (t->rvol < -84)
			t->rvol = -84 & 0xff;
	}

	FUNC2(sd);
	return 0;
}