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
struct TYPE_4__ {TYPE_1__* tuner_gpio; } ;
struct cx231xx {scalar_t__ tuner_type; int /*<<< orphan*/  model; TYPE_2__ board; } ;
struct TYPE_3__ {int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_BOARD_PV_PLAYTV_USB_HYBRID ; 
 int EINVAL ; 
#define  TDA18271_CALLBACK_CMD_AGC_ENABLE 128 
 scalar_t__ TUNER_NXP_TDA18271 ; 
 scalar_t__ TUNER_XC5000 ; 
 int XC5000_TUNER_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int FUNC1 (struct cx231xx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(void *ptr, int component, int command, int arg)
{
	int rc = 0;
	struct cx231xx *dev = ptr;

	if (dev->tuner_type == TUNER_XC5000) {
		if (command == XC5000_TUNER_RESET) {
			FUNC0
				("Tuner CB: RESET: cmd %d : tuner type %d \n",
				 command, dev->tuner_type);
			FUNC2(dev, dev->board.tuner_gpio->bit,
					       1);
			FUNC3(10);
			FUNC2(dev, dev->board.tuner_gpio->bit,
					       0);
			FUNC3(330);
			FUNC2(dev, dev->board.tuner_gpio->bit,
					       1);
			FUNC3(10);
		}
	} else if (dev->tuner_type == TUNER_NXP_TDA18271) {
		switch (command) {
		case TDA18271_CALLBACK_CMD_AGC_ENABLE:
			if (dev->model == CX231XX_BOARD_PV_PLAYTV_USB_HYBRID)
				rc = FUNC1(dev, arg);
			break;
		default:
			rc = -EINVAL;
			break;
		}
	}
	return rc;
}