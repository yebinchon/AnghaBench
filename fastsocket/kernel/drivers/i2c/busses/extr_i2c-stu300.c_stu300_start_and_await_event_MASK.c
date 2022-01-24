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
typedef  int /*<<< orphan*/  u8 ;
struct stu300_dev {int cmd_err; int cmd_event; TYPE_1__* pdev; int /*<<< orphan*/  cmd_complete; scalar_t__ virtbase; int /*<<< orphan*/  cmd_issue_lock; } ;
typedef  enum stu300_event { ____Placeholder_stu300_event } stu300_event ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ I2C_CR ; 
 int /*<<< orphan*/  I2C_CR_INTERRUPT_ENABLE ; 
 int STU300_ERROR_NONE ; 
 int /*<<< orphan*/  STU300_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stu300_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct stu300_dev *dev,
					  u8 cr_value,
					  enum stu300_event mr_event)
{
	int ret;

	if (FUNC8(FUNC3())) {
		/* TODO: implement polling for this case if need be. */
		FUNC0(1, "irqs are disabled, cannot poll for event\n");
		return -EIO;
	}

	/* Lock command issue, fill in an event we wait for */
	FUNC4(&dev->cmd_issue_lock);
	FUNC2(&dev->cmd_complete);
	dev->cmd_err = STU300_ERROR_NONE;
	dev->cmd_event = mr_event;
	FUNC5(&dev->cmd_issue_lock);

	/* Turn on interrupt, send command and wait. */
	cr_value |= I2C_CR_INTERRUPT_ENABLE;
	FUNC7(cr_value, dev->virtbase + I2C_CR);
	ret = FUNC9(&dev->cmd_complete,
							STU300_TIMEOUT);
	if (ret < 0) {
		FUNC1(&dev->pdev->dev,
		       "wait_for_completion_interruptible_timeout() "
		       "returned %d waiting for event %04x\n", ret, mr_event);
		return ret;
	}

	if (ret == 0) {
		FUNC1(&dev->pdev->dev, "controller timed out "
		       "waiting for event %d, reinit hardware\n", mr_event);
		(void) FUNC6(dev);
		return -ETIMEDOUT;
	}

	if (dev->cmd_err != STU300_ERROR_NONE) {
		FUNC1(&dev->pdev->dev, "controller (start) "
		       "error %d waiting for event %d, reinit hardware\n",
		       dev->cmd_err, mr_event);
		(void) FUNC6(dev);
		return -EIO;
	}

	return 0;
}