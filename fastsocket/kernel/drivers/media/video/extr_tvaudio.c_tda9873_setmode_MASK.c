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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {int /*<<< orphan*/  mode; TYPE_1__ shadow; struct v4l2_subdev sd; } ;

/* Variables and functions */
 int TDA9873_INP_MASK ; 
 int TDA9873_INTERNAL ; 
 int TDA9873_SW ; 
 int TDA9873_TR_DUALA ; 
 int TDA9873_TR_DUALB ; 
 int TDA9873_TR_MASK ; 
 int TDA9873_TR_MONO ; 
 int TDA9873_TR_STEREO ; 
#define  V4L2_TUNER_MODE_LANG1 131 
#define  V4L2_TUNER_MODE_LANG2 130 
#define  V4L2_TUNER_MODE_MONO 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int /*<<< orphan*/  FUNC0 (struct CHIPSTATE*,int,int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct CHIPSTATE *chip, int mode)
{
	struct v4l2_subdev *sd = &chip->sd;
	int sw_data  = chip->shadow.bytes[TDA9873_SW+1] & ~ TDA9873_TR_MASK;
	/*	int adj_data = chip->shadow.bytes[TDA9873_AD+1] ; */

	if ((sw_data & TDA9873_INP_MASK) != TDA9873_INTERNAL) {
		FUNC1(1, debug, sd, "tda9873_setmode(): external input\n");
		return;
	}

	FUNC1(1, debug, sd, "tda9873_setmode(): chip->shadow.bytes[%d] = %d\n", TDA9873_SW+1, chip->shadow.bytes[TDA9873_SW+1]);
	FUNC1(1, debug, sd, "tda9873_setmode(): sw_data  = %d\n", sw_data);

	switch (mode) {
	case V4L2_TUNER_MODE_MONO:
		sw_data |= TDA9873_TR_MONO;
		break;
	case V4L2_TUNER_MODE_STEREO:
		sw_data |= TDA9873_TR_STEREO;
		break;
	case V4L2_TUNER_MODE_LANG1:
		sw_data |= TDA9873_TR_DUALA;
		break;
	case V4L2_TUNER_MODE_LANG2:
		sw_data |= TDA9873_TR_DUALB;
		break;
	default:
		chip->mode = 0;
		return;
	}

	FUNC0(chip, TDA9873_SW, sw_data);
	FUNC1(1, debug, sd, "tda9873_setmode(): req. mode %d; chip_write: %d\n",
		mode, sw_data);
}