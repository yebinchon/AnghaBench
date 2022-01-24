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

/* Variables and functions */
 int CLOCK_HIGH_TIME ; 
 int CLOCK_LOW_TIME ; 
 int /*<<< orphan*/  I2C_CLOCK_HIGH ; 
 int /*<<< orphan*/  I2C_CLOCK_LOW ; 
 int /*<<< orphan*/  I2C_DATA_HIGH ; 
 int /*<<< orphan*/  I2C_DATA_LOW ; 
 int START_CONDITION_HOLD_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	/*
	 * SCL=1 SDA=1
	 */
	FUNC3();
	FUNC2(CLOCK_HIGH_TIME/6);
	FUNC1(I2C_DATA_HIGH);
	FUNC0(I2C_CLOCK_HIGH);
	FUNC2(CLOCK_HIGH_TIME);
	/*
	 * SCL=1 SDA=0
	 */
	FUNC1(I2C_DATA_LOW);
	FUNC2(START_CONDITION_HOLD_TIME);
	/*
	 * SCL=0 SDA=0
	 */
	FUNC0(I2C_CLOCK_LOW);
	FUNC2(CLOCK_LOW_TIME);
}