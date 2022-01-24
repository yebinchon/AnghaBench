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
struct sw {int type; int number; struct input_dev** dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int x; int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_RUDDER ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_BASE4 ; 
 int /*<<< orphan*/  BTN_BASE5 ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_TR ; 
 int FUNC0 (int,int) ; 
#define  SW_ID_3DP 133 
#define  SW_ID_FFP 132 
#define  SW_ID_FFW 131 
#define  SW_ID_FSP 130 
#define  SW_ID_GP 129 
#define  SW_ID_PP 128 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/ ** sw_btn ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* sw_hat_to_axis ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(unsigned char *buf, struct sw *sw)
{
	int hat, i, j;
	struct input_dev *dev;

	switch (sw->type) {

		case SW_ID_3DP:

			if (FUNC4(FUNC0(0,64)) || (hat = (FUNC0(6,1) << 3) | FUNC0(60,3)) > 8)
				return -1;

			dev = sw->dev[0];

			FUNC1(dev, ABS_X,        (FUNC0( 3,3) << 7) | FUNC0(16,7));
			FUNC1(dev, ABS_Y,        (FUNC0( 0,3) << 7) | FUNC0(24,7));
			FUNC1(dev, ABS_RZ,       (FUNC0(35,2) << 7) | FUNC0(40,7));
			FUNC1(dev, ABS_THROTTLE, (FUNC0(32,3) << 7) | FUNC0(48,7));

			FUNC1(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
			FUNC1(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

			for (j = 0; j < 7; j++)
				FUNC2(dev, sw_btn[SW_ID_3DP][j], !FUNC0(j+8,1));

			FUNC2(dev, BTN_BASE4, !FUNC0(38,1));
			FUNC2(dev, BTN_BASE5, !FUNC0(37,1));

			FUNC3(dev);

			return 0;

		case SW_ID_GP:

			for (i = 0; i < sw->number; i ++) {

				if (FUNC5(FUNC0(i*15,15)))
					return -1;

				FUNC1(sw->dev[i], ABS_X, FUNC0(i*15+3,1) - FUNC0(i*15+2,1));
				FUNC1(sw->dev[i], ABS_Y, FUNC0(i*15+0,1) - FUNC0(i*15+1,1));

				for (j = 0; j < 10; j++)
					FUNC2(sw->dev[i], sw_btn[SW_ID_GP][j], !FUNC0(i*15+j+4,1));

				FUNC3(sw->dev[i]);
			}

			return 0;

		case SW_ID_PP:
		case SW_ID_FFP:

			if (!FUNC5(FUNC0(0,48)) || (hat = FUNC0(42,4)) > 8)
				return -1;

			dev = sw->dev[0];
			FUNC1(dev, ABS_X,        FUNC0( 9,10));
			FUNC1(dev, ABS_Y,        FUNC0(19,10));
			FUNC1(dev, ABS_RZ,       FUNC0(36, 6));
			FUNC1(dev, ABS_THROTTLE, FUNC0(29, 7));

			FUNC1(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
			FUNC1(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

			for (j = 0; j < 9; j++)
				FUNC2(dev, sw_btn[SW_ID_PP][j], !FUNC0(j,1));

			FUNC3(dev);

			return 0;

		case SW_ID_FSP:

			if (!FUNC5(FUNC0(0,43)) || (hat = FUNC0(28,4)) > 8)
				return -1;

			dev = sw->dev[0];
			FUNC1(dev, ABS_X,        FUNC0( 0,10));
			FUNC1(dev, ABS_Y,        FUNC0(16,10));
			FUNC1(dev, ABS_THROTTLE, FUNC0(32, 6));

			FUNC1(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
			FUNC1(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

			for (j = 0; j < 6; j++)
				FUNC2(dev, sw_btn[SW_ID_FSP][j], !FUNC0(j+10,1));

			FUNC2(dev, BTN_TR,     !FUNC0(26,1));
			FUNC2(dev, BTN_START,  !FUNC0(27,1));
			FUNC2(dev, BTN_MODE,   !FUNC0(38,1));
			FUNC2(dev, BTN_SELECT, !FUNC0(39,1));

			FUNC3(dev);

			return 0;

		case SW_ID_FFW:

			if (!FUNC5(FUNC0(0,33)))
				return -1;

			dev = sw->dev[0];
			FUNC1(dev, ABS_RX,       FUNC0( 0,10));
			FUNC1(dev, ABS_RUDDER,   FUNC0(10, 6));
			FUNC1(dev, ABS_THROTTLE, FUNC0(16, 6));

			for (j = 0; j < 8; j++)
				FUNC2(dev, sw_btn[SW_ID_FFW][j], !FUNC0(j+22,1));

			FUNC3(dev);

			return 0;
	}

	return -1;
}