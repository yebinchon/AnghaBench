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
struct platform_device {int dummy; } ;
struct jornada_ts {int /*<<< orphan*/  y_data; int /*<<< orphan*/  x_data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  GETTOUCHSAMPLES ; 
 int FUNC0 (int) ; 
 int GPLR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TXDUMMY ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jornada_ts*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct jornada_ts* FUNC9 (struct platform_device*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct jornada_ts *jornada_ts = FUNC9(pdev);
	struct input_dev *input = jornada_ts->dev;
	int x, y;

	/* If GPIO_GPIO9 is set to high then report pen up */
	if (GPLR & FUNC0(9)) {
		FUNC2(input, BTN_TOUCH, 0);
		FUNC3(input);
	} else {
		FUNC8();

		/* proper reply to request is always TXDUMMY */
		if (FUNC7(GETTOUCHSAMPLES) == TXDUMMY) {
			FUNC5(jornada_ts);

			x = FUNC4(jornada_ts->x_data);
			y = FUNC4(jornada_ts->y_data);

			FUNC2(input, BTN_TOUCH, 1);
			FUNC1(input, ABS_X, x);
			FUNC1(input, ABS_Y, y);
			FUNC3(input);
		}

		FUNC6();
	}

	return IRQ_HANDLED;
}