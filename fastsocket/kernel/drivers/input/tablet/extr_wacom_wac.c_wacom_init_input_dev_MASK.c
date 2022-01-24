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
struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  device_type; } ;

/* Variables and functions */
#define  BAMBOO_PT 152 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
#define  CINTIQ 151 
#define  DTU 150 
#define  GRAPHIRE 149 
#define  INTUOS 148 
#define  INTUOS3 147 
#define  INTUOS3L 146 
#define  INTUOS3S 145 
#define  INTUOS4 144 
#define  INTUOS4L 143 
#define  INTUOS4S 142 
#define  INTUOS5 141 
#define  INTUOS5L 140 
#define  INTUOS5S 139 
#define  PENPARTNER 138 
#define  PL 137 
#define  PTU 136 
#define  TABLETPC 135 
#define  TABLETPC2FG 134 
#define  WACOM_21UX2 133 
#define  WACOM_22HD 132 
#define  WACOM_24HD 131 
#define  WACOM_BEE 130 
#define  WACOM_G4 129 
#define  WACOM_MO 128 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,struct wacom_wac*) ; 

void FUNC18(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	switch (wacom_wac->features->type) {
		case WACOM_MO:
			FUNC13(input_dev, wacom_wac);
		case WACOM_G4:
			FUNC7(input_dev, wacom_wac);
			/* fall through */
		case GRAPHIRE:
			FUNC6(input_dev, wacom_wac);
			break;
		case WACOM_24HD:
			FUNC0(input_dev, wacom_wac);
			break;
		case WACOM_22HD:
			FUNC4(input_dev, wacom_wac);
			/* fall through */
		case WACOM_21UX2:
			FUNC3(input_dev, wacom_wac);
			/* fall through */
		case WACOM_BEE:
			FUNC2(input_dev, wacom_wac);
                        /* fall through */
		case INTUOS3:
		case INTUOS3L:
			FUNC9(input_dev, wacom_wac);
			/* fall through */
		case INTUOS3S:
			FUNC10(input_dev, wacom_wac);
			/* fall through */
		case INTUOS:
			FUNC8(input_dev, wacom_wac);
			break;
		case INTUOS5:
		case INTUOS5L:
		case INTUOS4:
		case INTUOS4L:
			FUNC11(input_dev, wacom_wac);
			/* fall through */
		case INTUOS5S:
		case INTUOS4S:
			FUNC12(input_dev, wacom_wac);
			FUNC8(input_dev, wacom_wac);
			break;
		case TABLETPC2FG:
			FUNC17(input_dev, wacom_wac);
			/* fall through */
		case TABLETPC:
			FUNC16(input_dev, wacom_wac);
			if (wacom_wac->features->device_type != BTN_TOOL_PEN)
				break;  /* no need to process stylus stuff */

			/* fall through */
		case PL:
		case PTU:
		case DTU:
			FUNC14(input_dev, wacom_wac);
			/* fall through */
		case PENPARTNER:
			FUNC15(input_dev, wacom_wac);
			break;
                case CINTIQ:
                        FUNC5(input_dev, wacom_wac);
                        break;
		case BAMBOO_PT:
			FUNC1(input_dev, wacom_wac);
			break;
	}
	return;
}