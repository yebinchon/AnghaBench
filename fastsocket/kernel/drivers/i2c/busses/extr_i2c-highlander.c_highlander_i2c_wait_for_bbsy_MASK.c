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
struct highlander_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ SMCR ; 
 int SMCR_BBSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  iic_timeout ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct highlander_i2c_dev *dev)
{
	unsigned long timeout;

	timeout = jiffies + FUNC2(iic_timeout);
	while (FUNC1(dev->base + SMCR) & SMCR_BBSY) {
		if (FUNC4(jiffies, timeout)) {
			FUNC0(dev->dev, "timeout waiting for bus ready\n");
			return -ETIMEDOUT;
		}

		FUNC3(1);
	}

	return 0;
}