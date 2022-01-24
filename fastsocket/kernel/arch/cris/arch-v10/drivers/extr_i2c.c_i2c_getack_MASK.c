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
 int I2C_CLOCK_HIGH ; 
 int I2C_CLOCK_LOW ; 
 int I2C_DATA_HIGH ; 
 int I2C_DATA_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

int
FUNC8(void)
{
	int ack = 1;
	/*
	 * enable output
	 */
	FUNC4();
	/*
	 * Release data bus by setting
	 * data high
	 */
	FUNC1(I2C_DATA_HIGH);
	/*
	 * enable input
	 */
	FUNC3();
	FUNC2(CLOCK_HIGH_TIME/4);
	/*
	 * generate ACK clock pulse
	 */
	FUNC0(I2C_CLOCK_HIGH);
	/*
	 * Use PORT PB instead of I2C
	 * for input. (I2C not working)
	 */
	FUNC0(1);
	FUNC1(1);
	/*
	 * switch off I2C
	 */
	FUNC1(1);
	FUNC5();
	FUNC3();
	/*
	 * now wait for ack
	 */
	FUNC2(CLOCK_HIGH_TIME/2);
	/*
	 * check for ack
	 */
	if(FUNC7())
		ack = 0;
	FUNC2(CLOCK_HIGH_TIME/2);
	if(!ack){
		if(!FUNC7()) /* receiver pulld SDA low */
			ack = 1;
		FUNC2(CLOCK_HIGH_TIME/2);
	}

	/*
	 * our clock is high now, make sure data is low
	 * before we enable our output. If we keep data high
	 * and enable output, we would generate a stop condition.
	 */
	FUNC1(I2C_DATA_LOW);

	/*
	 * end clock pulse
	 */
	FUNC6();
	FUNC4();
	FUNC0(I2C_CLOCK_LOW);
	FUNC2(CLOCK_HIGH_TIME/4);
	/*
	 * enable output
	 */
	FUNC4();
	/*
	 * remove ACK clock pulse
	 */
	FUNC1(I2C_DATA_HIGH);
	FUNC2(CLOCK_LOW_TIME/2);
	return ack;
}