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
struct dw_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DW_IC_STATUS ; 
 int DW_IC_STATUS_ACTIVITY ; 
 int ETIMEDOUT ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct dw_i2c_dev *dev)
{
	int timeout = TIMEOUT;

	while (FUNC2(dev->base + DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY) {
		if (timeout <= 0) {
			FUNC0(dev->dev, "timeout waiting for bus ready\n");
			return -ETIMEDOUT;
		}
		timeout--;
		FUNC1(1);
	}

	return 0;
}