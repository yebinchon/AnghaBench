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
struct da9034_touch {int state; int /*<<< orphan*/  interval_ms; int /*<<< orphan*/  tsi_work; } ;

/* Variables and functions */
 int EVENT_PEN_DOWN ; 
 int EVENT_PEN_UP ; 
 int EVENT_TIMEDOUT ; 
 int EVENT_TSI_READY ; 
#define  STATE_BUSY 131 
#define  STATE_IDLE 130 
#define  STATE_STOP 129 
#define  STATE_WAIT 128 
 int /*<<< orphan*/  FUNC0 (struct da9034_touch*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct da9034_touch*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct da9034_touch*) ; 
 int /*<<< orphan*/  FUNC5 (struct da9034_touch*) ; 
 int /*<<< orphan*/  FUNC6 (struct da9034_touch*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct da9034_touch*) ; 
 int FUNC9 (struct da9034_touch*) ; 

__attribute__((used)) static void FUNC10(struct da9034_touch *touch, int event)
{
	int err;

	switch (touch->state) {
	case STATE_IDLE:
		if (event != EVENT_PEN_DOWN)
			break;

		/* Enable auto measurement of the TSI, this will
		 * automatically disable pen down detection
		 */
		err = FUNC8(touch);
		if (err)
			goto err_reset;

		touch->state = STATE_BUSY;
		break;

	case STATE_BUSY:
		if (event != EVENT_TSI_READY)
			break;

		err = FUNC4(touch);
		if (err)
			goto err_reset;

		/* Disable auto measurement of the TSI, so that
		 * pen down status will be available
		 */
		err = FUNC9(touch);
		if (err)
			goto err_reset;

		touch->state = STATE_STOP;

		/* FIXME: PEN_{UP/DOWN} events are expected to be
		 * available by stopping TSI, but this is found not
		 * always true, delay and simulate such an event
		 * here is more reliable
		 */
		FUNC2(1);
		FUNC10(touch,
				     FUNC1(touch) ? EVENT_PEN_DOWN :
							  EVENT_PEN_UP);
		break;

	case STATE_STOP:
		if (event == EVENT_PEN_DOWN) {
			FUNC5(touch);
			FUNC7(&touch->tsi_work,
				FUNC3(touch->interval_ms));
			touch->state = STATE_WAIT;
		}

		if (event == EVENT_PEN_UP) {
			FUNC6(touch);
			touch->state = STATE_IDLE;
		}
		break;

	case STATE_WAIT:
		if (event != EVENT_TIMEDOUT)
			break;

		if (FUNC1(touch)) {
			FUNC8(touch);
			touch->state = STATE_BUSY;
		} else {
			FUNC6(touch);
			touch->state = STATE_IDLE;
		}
		break;
	}
	return;

err_reset:
	touch->state = STATE_IDLE;
	FUNC9(touch);
	FUNC0(touch, 1);
}