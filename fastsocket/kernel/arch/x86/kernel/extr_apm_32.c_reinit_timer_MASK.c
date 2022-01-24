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
 int LATCH ; 
 int /*<<< orphan*/  PIT_CH0 ; 
 int /*<<< orphan*/  PIT_MODE ; 
 int /*<<< orphan*/  i8253_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
#ifdef INIT_TIMER_AFTER_SUSPEND
	unsigned long flags;

	spin_lock_irqsave(&i8253_lock, flags);
	/* set the clock to HZ */
	outb_pit(0x34, PIT_MODE);		/* binary, mode 2, LSB/MSB, ch 0 */
	udelay(10);
	outb_pit(LATCH & 0xff, PIT_CH0);	/* LSB */
	udelay(10);
	outb_pit(LATCH >> 8, PIT_CH0);	/* MSB */
	udelay(10);
	spin_unlock_irqrestore(&i8253_lock, flags);
#endif
}