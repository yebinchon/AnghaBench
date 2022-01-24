#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_control {int value; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {size_t type; } ;
struct bttv {int mute; int audio; scalar_t__ sd_tvaudio; scalar_t__ sd_msp34xx; TYPE_1__ c; int /*<<< orphan*/  radio_user; scalar_t__ opt_automute; } ;
struct TYPE_4__ {int gpiomute; int* gpiomux; int /*<<< orphan*/  gpiomask; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_DSTATUS ; 
 int BT848_DSTATUS_HLOC ; 
#define  BTTV_BOARD_VOODOOTV_200 133 
#define  BTTV_BOARD_VOODOOTV_FM 132 
 int /*<<< orphan*/  MSP_DSP_IN_SCART ; 
 int /*<<< orphan*/  MSP_DSP_IN_TUNER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MSP_INPUT_DEFAULT ; 
 int /*<<< orphan*/  MSP_IN_SCART1 ; 
 int /*<<< orphan*/  MSP_IN_SCART2 ; 
 int /*<<< orphan*/  MSP_IN_TUNER1 ; 
 int /*<<< orphan*/  MSP_IN_TUNER2 ; 
 int /*<<< orphan*/  MSP_OUTPUT_DEFAULT ; 
#define  TVAUDIO_INPUT_EXTERN 131 
#define  TVAUDIO_INPUT_INTERN 130 
#define  TVAUDIO_INPUT_RADIO 129 
#define  TVAUDIO_INPUT_TUNER 128 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/ * audio_modes ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bttv*,int) ; 
 TYPE_2__* bttv_tvcards ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  s_ctrl ; 
 int /*<<< orphan*/  s_routing ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct bttv *btv, int input, int mute)
{
	int gpio_val, signal;
	struct v4l2_control ctrl;

	FUNC6(bttv_tvcards[btv->c.type].gpiomask,
		   bttv_tvcards[btv->c.type].gpiomask);
	signal = FUNC1(BT848_DSTATUS) & BT848_DSTATUS_HLOC;

	btv->mute = mute;
	btv->audio = input;

	/* automute */
	mute = mute || (btv->opt_automute && !signal && !btv->radio_user);

	if (mute)
		gpio_val = bttv_tvcards[btv->c.type].gpiomute;
	else
		gpio_val = bttv_tvcards[btv->c.type].gpiomux[input];

	switch (btv->c.type) {
	case BTTV_BOARD_VOODOOTV_FM:
	case BTTV_BOARD_VOODOOTV_200:
		gpio_val = FUNC4(btv, gpio_val);
		break;

	default:
		FUNC5(bttv_tvcards[btv->c.type].gpiomask, gpio_val);
	}

	if (bttv_gpio)
		FUNC3(btv, audio_modes[mute ? 4 : input]);
	if (FUNC7())
		return 0;

	ctrl.id = V4L2_CID_AUDIO_MUTE;
	ctrl.value = btv->mute;
	FUNC2(btv, core, s_ctrl, &ctrl);
	if (btv->sd_msp34xx) {
		u32 in;

		/* Note: the inputs tuner/radio/extern/intern are translated
		   to msp routings. This assumes common behavior for all msp3400
		   based TV cards. When this assumption fails, then the
		   specific MSP routing must be added to the card table.
		   For now this is sufficient. */
		switch (input) {
		case TVAUDIO_INPUT_RADIO:
			in = FUNC0(MSP_IN_SCART2, MSP_IN_TUNER1,
				    MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
			break;
		case TVAUDIO_INPUT_EXTERN:
			in = FUNC0(MSP_IN_SCART1, MSP_IN_TUNER1,
				    MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
			break;
		case TVAUDIO_INPUT_INTERN:
			/* Yes, this is the same input as for RADIO. I doubt
			   if this is ever used. The only board with an INTERN
			   input is the BTTV_BOARD_AVERMEDIA98. I wonder how
			   that was tested. My guess is that the whole INTERN
			   input does not work. */
			in = FUNC0(MSP_IN_SCART2, MSP_IN_TUNER1,
				    MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
			break;
		case TVAUDIO_INPUT_TUNER:
		default:
			/* This is the only card that uses TUNER2, and afaik,
			   is the only difference between the VOODOOTV_FM
			   and VOODOOTV_200 */
			if (btv->c.type == BTTV_BOARD_VOODOOTV_200)
				in = FUNC0(MSP_IN_SCART1, MSP_IN_TUNER2, \
					MSP_DSP_IN_TUNER, MSP_DSP_IN_TUNER);
			else
				in = MSP_INPUT_DEFAULT;
			break;
		}
		FUNC8(btv->sd_msp34xx, audio, s_routing,
			       in, MSP_OUTPUT_DEFAULT, 0);
	}
	if (btv->sd_tvaudio) {
		FUNC8(btv->sd_tvaudio, audio, s_routing,
				input, 0, 0);
	}
	return 0;
}