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
struct usb_ov511 {scalar_t__ bclass; int sensor; int /*<<< orphan*/  mirror; int /*<<< orphan*/  backlight; scalar_t__ lightfreq; int /*<<< orphan*/  auto_exp; int /*<<< orphan*/  auto_brt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BCL_OV518 ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
#define  SEN_KS0127 136 
#define  SEN_KS0127B 135 
#define  SEN_OV6620 134 
#define  SEN_OV6630 133 
#define  SEN_OV7610 132 
#define  SEN_OV7620 131 
#define  SEN_OV76BE 130 
#define  SEN_OV8600 129 
#define  SEN_SAA7111A 128 
 int /*<<< orphan*/  bandingfilter ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ov511*,int) ; 
 int /*<<< orphan*/  lightfreq ; 
 int FUNC4 (struct usb_ov511*,int,int,int,int) ; 
 int FUNC5 (struct usb_ov511*,int,int,int,int) ; 
 int FUNC6 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_ov511*,int,int,int,int) ; 

__attribute__((used)) static int
FUNC13(struct usb_ov511 *ov,
	       int width, int height, int mode, int sub_flag)
{
	int rc = 0;

	if (!ov || !ov->dev)
		return -EFAULT;

	if (ov->bclass == BCL_OV518) {
		rc = FUNC5(ov, width, height, mode, sub_flag);
	} else {
		rc = FUNC4(ov, width, height, mode, sub_flag);
	}

	if (FUNC0(rc))
		return rc;

	switch (ov->sensor) {
	case SEN_OV7610:
	case SEN_OV7620:
	case SEN_OV76BE:
	case SEN_OV8600:
	case SEN_OV6620:
	case SEN_OV6630:
		rc = FUNC12(ov, width, height, mode, sub_flag);
		break;
	case SEN_KS0127:
	case SEN_KS0127B:
		FUNC2("KS0127-series decoders not supported yet");
		rc = -EINVAL;
		break;
	case SEN_SAA7111A:
//		rc = mode_init_saa_sensor_regs(ov, width, height, mode,
//					       sub_flag);

		FUNC1(1, "SAA status = 0x%02X", FUNC3(ov, 0x1f));
		break;
	default:
		FUNC2("Unknown sensor");
		rc = -EINVAL;
	}

	if (FUNC0(rc))
		return rc;

	/* Sensor-independent settings */
	rc = FUNC6(ov, ov->auto_brt);
	if (FUNC0(rc))
		return rc;

	rc = FUNC7(ov, ov->auto_exp);
	if (FUNC0(rc))
		return rc;

	rc = FUNC9(ov, bandingfilter);
	if (FUNC0(rc))
		return rc;

	if (ov->lightfreq) {
		rc = FUNC10(ov, lightfreq);
		if (FUNC0(rc))
			return rc;
	}

	rc = FUNC8(ov, ov->backlight);
	if (FUNC0(rc))
		return rc;

	rc = FUNC11(ov, ov->mirror);
	if (FUNC0(rc))
		return rc;

	return 0;
}