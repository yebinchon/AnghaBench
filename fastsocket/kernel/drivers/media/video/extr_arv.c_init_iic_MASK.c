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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PLDI2CACK ; 
 int /*<<< orphan*/  PLDI2CCR ; 
 int /*<<< orphan*/  PLDI2CFREQ ; 
 int /*<<< orphan*/  PLDI2CMOD ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int freq ; 

void FUNC2(void)
{
	FUNC0(1, "init_iic:\n");

	/*
	 * ICU Setting (iic)
	 */
	/* I2C Setting */
	FUNC1(0x0, PLDI2CCR);      	/* I2CCR Disable                   */
	FUNC1(0x0300, PLDI2CMOD); 	/* I2CMOD ACK/8b-data/7b-addr/auto */
	FUNC1(0x1, PLDI2CACK);	/* I2CACK ACK                      */

	/* I2C CLK */
	/* 50MH-100k */
	if (freq == 75) {
		FUNC1(369, PLDI2CFREQ);	/* BCLK = 75MHz */
	} else if (freq == 50) {
		FUNC1(244, PLDI2CFREQ);	/* BCLK = 50MHz */
	} else {
		FUNC1(244, PLDI2CFREQ);	/* default: BCLK = 50MHz */
	}
	FUNC1(0x1, PLDI2CCR); 	/* I2CCR Enable */
}