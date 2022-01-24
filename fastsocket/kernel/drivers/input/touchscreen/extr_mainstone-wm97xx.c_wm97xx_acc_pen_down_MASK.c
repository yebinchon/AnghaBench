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
typedef  int u16 ;
struct wm97xx {int /*<<< orphan*/  input_dev; } ;
struct TYPE_2__ {int reads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int MODR ; 
 int RC_AGAIN ; 
 int RC_PENDOWN ; 
 int RC_PENUP ; 
 int WM97XX_ADCSEL_PRES ; 
 int WM97XX_ADCSEL_X ; 
 int WM97XX_ADCSEL_Y ; 
 int WM97XX_ADCSRC_MASK ; 
 TYPE_1__* cinfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int last ; 
 scalar_t__ pressure ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t sp_idx ; 
 int tries ; 

__attribute__((used)) static int FUNC4(struct wm97xx *wm)
{
	u16 x, y, p = 0x100 | WM97XX_ADCSEL_PRES;
	int reads = 0;

	/* When the AC97 queue has been drained we need to allow time
	 * to buffer up samples otherwise we end up spinning polling
	 * for samples.  The controller can't have a suitably low
	 * threashold set to use the notifications it gives.
	 */
	FUNC3(1);

	if (tries > 5) {
		tries = 0;
		return RC_PENUP;
	}

	x = MODR;
	if (x == last) {
		tries++;
		return RC_AGAIN;
	}
	last = x;
	do {
		if (reads)
			x = MODR;
		y = MODR;
		if (pressure)
			p = MODR;

		/* are samples valid */
		if ((x & WM97XX_ADCSRC_MASK) != WM97XX_ADCSEL_X ||
		    (y & WM97XX_ADCSRC_MASK) != WM97XX_ADCSEL_Y ||
		    (p & WM97XX_ADCSRC_MASK) != WM97XX_ADCSEL_PRES)
			goto up;

		/* coordinate is good */
		tries = 0;
		FUNC0(wm->input_dev, ABS_X, x & 0xfff);
		FUNC0(wm->input_dev, ABS_Y, y & 0xfff);
		FUNC0(wm->input_dev, ABS_PRESSURE, p & 0xfff);
		FUNC1(wm->input_dev, BTN_TOUCH, (p != 0));
		FUNC2(wm->input_dev);
		reads++;
	} while (reads < cinfo[sp_idx].reads);
up:
	return RC_PENDOWN | RC_AGAIN;
}