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
struct smscore_device_t {int dummy; } ;
struct sms_board {int /*<<< orphan*/  led_hi; int /*<<< orphan*/  led_lo; } ;

/* Variables and functions */
#define  SMS1XXX_BOARD_HAUPPAUGE_WINDHAM 128 
 int SMS_LED_HI ; 
 int SMS_LED_LO ; 
 struct sms_board* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct smscore_device_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct smscore_device_t*) ; 
 int FUNC3 (struct smscore_device_t*,int) ; 

int FUNC4(struct smscore_device_t *coredev, int led)
{
	int board_id = FUNC2(coredev);
	struct sms_board *board = FUNC0(board_id);

	/* dont touch GPIO if LEDs are already set */
	if (FUNC3(coredev, -1) == led)
		return 0;

	switch (board_id) {
	case SMS1XXX_BOARD_HAUPPAUGE_WINDHAM:
		FUNC1(coredev,
			     board->led_lo, (led & SMS_LED_LO) ? 1 : 0);
		FUNC1(coredev,
			     board->led_hi, (led & SMS_LED_HI) ? 1 : 0);

		FUNC3(coredev, led);
		break;
	}
	return 0;
}