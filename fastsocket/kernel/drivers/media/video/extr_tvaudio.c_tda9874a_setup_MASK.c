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
struct CHIPSTATE {struct v4l2_subdev sd; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDA9874A_AGCGR ; 
 int /*<<< orphan*/  TDA9874A_AMCONR ; 
 int /*<<< orphan*/  TDA9874A_AOSR ; 
 int /*<<< orphan*/  TDA9874A_C1OLAR ; 
 int /*<<< orphan*/  TDA9874A_C2OLAR ; 
 int /*<<< orphan*/  TDA9874A_ESP ; 
 int /*<<< orphan*/  TDA9874A_FMMR ; 
 int /*<<< orphan*/  TDA9874A_GCONR ; 
 int /*<<< orphan*/  TDA9874A_MDACOSR ; 
 int /*<<< orphan*/  TDA9874A_MSR ; 
 int /*<<< orphan*/  TDA9874A_NCONR ; 
 int /*<<< orphan*/  TDA9874A_NLELR ; 
 int /*<<< orphan*/  TDA9874A_NOLAR ; 
 int /*<<< orphan*/  TDA9874A_NUELR ; 
 int /*<<< orphan*/  TDA9874A_SDACOSR ; 
 int /*<<< orphan*/  FUNC0 (struct CHIPSTATE*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct CHIPSTATE*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  debug ; 
 int tda9874a_ESP ; 
 int tda9874a_GCONR ; 
 int tda9874a_NCONR ; 
 size_t tda9874a_STD ; 
 int tda9874a_dic ; 
 scalar_t__ tda9874a_mode ; 
 TYPE_1__* tda9874a_modelist ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC3(struct CHIPSTATE *chip)
{
	struct v4l2_subdev *sd = &chip->sd;

	FUNC1(chip, TDA9874A_AGCGR, 0x00); /* 0 dB */
	FUNC1(chip, TDA9874A_GCONR, tda9874a_GCONR);
	FUNC1(chip, TDA9874A_MSR, (tda9874a_mode) ? 0x03:0x02);
	if(tda9874a_dic == 0x11) {
		FUNC1(chip, TDA9874A_FMMR, 0x80);
	} else { /* dic == 0x07 */
		FUNC0(chip,"tda9874_modelist",&tda9874a_modelist[tda9874a_STD].cmd);
		FUNC1(chip, TDA9874A_FMMR, 0x00);
	}
	FUNC1(chip, TDA9874A_C1OLAR, 0x00); /* 0 dB */
	FUNC1(chip, TDA9874A_C2OLAR, 0x00); /* 0 dB */
	FUNC1(chip, TDA9874A_NCONR, tda9874a_NCONR);
	FUNC1(chip, TDA9874A_NOLAR, 0x00); /* 0 dB */
	/* Note: If signal quality is poor you may want to change NICAM */
	/* error limit registers (NLELR and NUELR) to some greater values. */
	/* Then the sound would remain stereo, but won't be so clear. */
	FUNC1(chip, TDA9874A_NLELR, 0x14); /* default */
	FUNC1(chip, TDA9874A_NUELR, 0x50); /* default */

	if(tda9874a_dic == 0x11) {
		FUNC1(chip, TDA9874A_AMCONR, 0xf9);
		FUNC1(chip, TDA9874A_SDACOSR, (tda9874a_mode) ? 0x81:0x80);
		FUNC1(chip, TDA9874A_AOSR, 0x80);
		FUNC1(chip, TDA9874A_MDACOSR, (tda9874a_mode) ? 0x82:0x80);
		FUNC1(chip, TDA9874A_ESP, tda9874a_ESP);
	} else { /* dic == 0x07 */
		FUNC1(chip, TDA9874A_AMCONR, 0xfb);
		FUNC1(chip, TDA9874A_SDACOSR, (tda9874a_mode) ? 0x81:0x80);
		FUNC1(chip, TDA9874A_AOSR, 0x00); /* or 0x10 */
	}
	FUNC2(1, debug, sd, "tda9874a_setup(): %s [0x%02X].\n",
		tda9874a_modelist[tda9874a_STD].name,tda9874a_STD);
	return 1;
}