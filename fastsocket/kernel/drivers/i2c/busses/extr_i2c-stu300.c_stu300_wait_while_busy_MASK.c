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
typedef  int u32 ;
struct stu300_dev {TYPE_1__* pdev; scalar_t__ virtbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUSY_RELEASE_ATTEMPTS ; 
 int ETIMEDOUT ; 
 scalar_t__ I2C_SR1 ; 
 int I2C_SR1_BUSY_IND ; 
 unsigned long STU300_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct stu300_dev*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct stu300_dev *dev)
{
	unsigned long timeout;
	int i;

	for (i = 0; i < BUSY_RELEASE_ATTEMPTS; i++) {
		timeout = jiffies + STU300_TIMEOUT;

		while (!FUNC4(jiffies, timeout)) {
			/* Is not busy? */
			if ((FUNC3(dev->virtbase + I2C_SR1) &
			     I2C_SR1_BUSY_IND) == 0)
				return 0;
			FUNC1(1);
		}

		FUNC0(&dev->pdev->dev, "transaction timed out "
			"waiting for device to be free (not busy). "
		       "Attempt: %d\n", i+1);

		FUNC0(&dev->pdev->dev, "base address = "
			"0x%08x, reinit hardware\n", (u32) dev->virtbase);

		(void) FUNC2(dev);
	}

	FUNC0(&dev->pdev->dev, "giving up after %d attempts "
		"to reset the bus.\n",  BUSY_RELEASE_ATTEMPTS);

	return -ETIMEDOUT;
}