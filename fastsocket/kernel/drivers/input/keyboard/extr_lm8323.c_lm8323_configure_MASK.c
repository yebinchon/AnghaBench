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
struct lm8323_chip {int size_x; int size_y; int debounce_time; int active_time; } ;

/* Variables and functions */
 int CLK_RCPWM_EXTERNAL ; 
 int CLK_SLOWCLKEN ; 
 int /*<<< orphan*/  LM8323_CMD_SET_DEBOUNCE ; 
 int /*<<< orphan*/  LM8323_CMD_SET_KEY_SIZE ; 
 int /*<<< orphan*/  LM8323_CMD_WRITE_CFG ; 
 int /*<<< orphan*/  LM8323_CMD_WRITE_CLOCK ; 
 int /*<<< orphan*/  LM8323_CMD_WRITE_PORT_SEL ; 
 int /*<<< orphan*/  LM8323_CMD_WRITE_PORT_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct lm8323_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lm8323_chip*,int,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC2(struct lm8323_chip *lm)
{
	int keysize = (lm->size_x << 4) | lm->size_y;
	int clock = (CLK_SLOWCLKEN | CLK_RCPWM_EXTERNAL);
	int debounce = lm->debounce_time >> 2;
	int active = lm->active_time >> 2;

	/*
	 * Active time must be greater than the debounce time: if it's
	 * a close-run thing, give ourselves a 12ms buffer.
	 */
	if (debounce >= active)
		active = debounce + 3;

	FUNC1(lm, 2, LM8323_CMD_WRITE_CFG, 0);
	FUNC1(lm, 2, LM8323_CMD_WRITE_CLOCK, clock);
	FUNC1(lm, 2, LM8323_CMD_SET_KEY_SIZE, keysize);
	FUNC0(lm, lm->active_time);
	FUNC1(lm, 2, LM8323_CMD_SET_DEBOUNCE, debounce);
	FUNC1(lm, 3, LM8323_CMD_WRITE_PORT_STATE, 0xff, 0xff);
	FUNC1(lm, 3, LM8323_CMD_WRITE_PORT_SEL, 0, 0);

	/*
	 * Not much we can do about errors at this point, so just hope
	 * for the best.
	 */

	return 0;
}