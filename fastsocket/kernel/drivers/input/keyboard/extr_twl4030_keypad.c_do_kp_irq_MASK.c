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
typedef  int u8 ;
struct twl4030_keypad {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int KEYP_IMR1_KP ; 
 int /*<<< orphan*/  KEYP_ISR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_keypad*,int) ; 
 int FUNC2 (struct twl4030_keypad*,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_kp)
{
	struct twl4030_keypad *kp = _kp;
	u8 reg;
	int ret;

#ifdef CONFIG_LOCKDEP
	/* WORKAROUND for lockdep forcing IRQF_DISABLED on us, which
	 * we don't want and can't tolerate.  Although it might be
	 * friendlier not to borrow this thread context...
	 */
	local_irq_enable();
#endif

	/* Read & Clear TWL4030 pending interrupt */
	ret = FUNC2(kp, &reg, KEYP_ISR1, 1);

	/* Release all keys if I2C has gone bad or
	 * the KEYP has gone to idle state */
	if (ret >= 0 && (reg & KEYP_IMR1_KP))
		FUNC1(kp, false);
	else
		FUNC1(kp, true);

	return IRQ_HANDLED;
}