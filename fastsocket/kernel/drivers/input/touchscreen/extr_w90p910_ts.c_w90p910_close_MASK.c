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
struct w90p910_ts {int /*<<< orphan*/  clk; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  ts_reg; int /*<<< orphan*/  state; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 unsigned long ADC_DIV ; 
 unsigned long ADC_EN ; 
 unsigned long ADC_INT_EN ; 
 unsigned long ADC_WAITTRIG ; 
 int /*<<< orphan*/  TS_IDLE ; 
 unsigned long WT_INT_EN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct w90p910_ts* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct input_dev *dev)
{
	struct w90p910_ts *w90p910_ts = FUNC4(dev);
	unsigned long val;

	/* disable trigger mode */

	FUNC5(&w90p910_ts->lock);

	w90p910_ts->state = TS_IDLE;

	val = FUNC0(w90p910_ts->ts_reg);
	val &= ~(ADC_WAITTRIG | ADC_DIV | ADC_EN | WT_INT_EN | ADC_INT_EN);
	FUNC1(val, w90p910_ts->ts_reg);

	FUNC6(&w90p910_ts->lock);

	/* Now that interrupts are shut off we can safely delete timer */
	FUNC3(&w90p910_ts->timer);

	/* stop the ADC clock */
	FUNC2(w90p910_ts->clk);
}