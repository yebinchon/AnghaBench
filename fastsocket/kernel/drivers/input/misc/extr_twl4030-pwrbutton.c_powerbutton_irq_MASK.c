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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int PWR_PWRON_IRQ ; 
 int /*<<< orphan*/  STS_HW_CONDITIONS ; 
 int /*<<< orphan*/  TWL4030_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_pwr)
{
	struct input_dev *pwr = _pwr;
	int err;
	u8 value;

#ifdef CONFIG_LOCKDEP
	/* WORKAROUND for lockdep forcing IRQF_DISABLED on us, which
	 * we don't want and can't tolerate since this is a threaded
	 * IRQ and can sleep due to the i2c reads it has to issue.
	 * Although it might be friendlier not to borrow this thread
	 * context...
	 */
	local_irq_enable();
#endif

	err = FUNC4(TWL4030_MODULE_PM_MASTER, &value,
				  STS_HW_CONDITIONS);
	if (!err)  {
		FUNC1(pwr, KEY_POWER, value & PWR_PWRON_IRQ);
		FUNC2(pwr);
	} else {
		FUNC0(pwr->dev.parent, "twl4030: i2c error %d while reading"
			" TWL4030 PM_MASTER STS_HW_CONDITIONS register\n", err);
	}

	return IRQ_HANDLED;
}