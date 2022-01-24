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
struct corgi_ts {TYPE_1__* machinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_hsync ) () ;} ;

/* Variables and functions */
 unsigned int ADSCTRL_ADR_SH ; 
 unsigned int ADSCTRL_PD0 ; 
 unsigned int ADSCTRL_PD1 ; 
 unsigned int ADSCTRL_STS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct corgi_ts *corgi_ts, int doRecive, int doSend,
		unsigned int address, unsigned long wait_time)
{
	unsigned long timer1 = 0, timer2, pmnc = 0;
	int pos = 0;

	if (wait_time && doSend) {
		FUNC1(pmnc);
		if (!(pmnc & 0x01))
			FUNC2(0x01);

		/* polling HSync */
		corgi_ts->machinfo->wait_hsync();
		/* get CCNT */
		FUNC0(timer1);
	}

	if (doRecive)
		pos = FUNC3();

	if (doSend) {
		int cmd = ADSCTRL_PD0 | ADSCTRL_PD1 | (address << ADSCTRL_ADR_SH) | ADSCTRL_STS;
		/* dummy command */
		FUNC4(cmd);
		FUNC3();

		if (wait_time) {
			/* Wait after HSync */
			FUNC0(timer2);
			if (timer2-timer1 > wait_time) {
				/* too slow - timeout, try again */
				corgi_ts->machinfo->wait_hsync();
				/* get CCNT */
				FUNC0(timer1);
				/* Wait after HSync */
				FUNC0(timer2);
			}
			while (timer2 - timer1 < wait_time)
				FUNC0(timer2);
		}
		FUNC4(cmd);
		if (wait_time && !(pmnc & 0x01))
			FUNC2(pmnc);
	}
	return pos;
}