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
struct sms_board {int /*<<< orphan*/  lna_ctrl; int /*<<< orphan*/  led_power; } ;

/* Variables and functions */
#define  SMS1XXX_BOARD_HAUPPAUGE_TIGER_MINICARD 130 
#define  SMS1XXX_BOARD_HAUPPAUGE_TIGER_MINICARD_R2 129 
#define  SMS1XXX_BOARD_HAUPPAUGE_WINDHAM 128 
 struct sms_board* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct smscore_device_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct smscore_device_t*) ; 

int FUNC3(struct smscore_device_t *coredev, int onoff)
{
	int board_id = FUNC2(coredev);
	struct sms_board *board = FUNC0(board_id);

	switch (board_id) {
	case SMS1XXX_BOARD_HAUPPAUGE_WINDHAM:
		/* power LED */
		FUNC1(coredev,
			     board->led_power, onoff ? 1 : 0);
		break;
	case SMS1XXX_BOARD_HAUPPAUGE_TIGER_MINICARD_R2:
	case SMS1XXX_BOARD_HAUPPAUGE_TIGER_MINICARD:
		/* LNA */
		if (!onoff)
			FUNC1(coredev, board->lna_ctrl, 0);
		break;
	}
	return 0;
}