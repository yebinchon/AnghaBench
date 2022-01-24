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
struct w90p910_ts {scalar_t__ ts_reg; int /*<<< orphan*/  state; int /*<<< orphan*/  clk; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 unsigned long ADC_DELAY ; 
 unsigned long ADC_DIV ; 
 unsigned long ADC_EN ; 
 unsigned long ADC_RST0 ; 
 unsigned long ADC_RST1 ; 
 unsigned long ADC_WAITTRIG ; 
 unsigned long TSC_FOURWIRE ; 
 int /*<<< orphan*/  TS_WAIT_NEW_PACKET ; 
 unsigned long WT_INT_EN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w90p910_ts* FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev)
{
	struct w90p910_ts *w90p910_ts = FUNC3(dev);
	unsigned long val;

	/* enable the ADC clock */
	FUNC2(w90p910_ts->clk);

	FUNC1(ADC_RST1, w90p910_ts->ts_reg);
	FUNC4(1);
	FUNC1(ADC_RST0, w90p910_ts->ts_reg);
	FUNC4(1);

	/* set delay and screen type */
	val = FUNC0(w90p910_ts->ts_reg + 0x04);
	FUNC1(val & TSC_FOURWIRE, w90p910_ts->ts_reg + 0x04);
	FUNC1(ADC_DELAY, w90p910_ts->ts_reg + 0x08);

	w90p910_ts->state = TS_WAIT_NEW_PACKET;
	FUNC5();

	/* set trigger mode */
	val = FUNC0(w90p910_ts->ts_reg);
	val |= ADC_WAITTRIG | ADC_DIV | ADC_EN | WT_INT_EN;
	FUNC1(val, w90p910_ts->ts_reg);

	return 0;
}