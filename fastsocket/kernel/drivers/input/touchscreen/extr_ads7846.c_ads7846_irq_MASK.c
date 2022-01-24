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
struct ads7846 {int irq_disabled; int pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TS_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *handle)
{
	struct ads7846 *ts = handle;
	unsigned long flags;

	FUNC5(&ts->lock, flags);
	if (FUNC4(FUNC1(ts))) {
		if (!ts->irq_disabled) {
			/* The ARM do_simple_IRQ() dispatcher doesn't act
			 * like the other dispatchers:  it will report IRQs
			 * even after they've been disabled.  We work around
			 * that here.  (The "generic irq" framework may help...)
			 */
			ts->irq_disabled = 1;
			FUNC0(ts->spi->irq);
			ts->pending = 1;
			FUNC2(&ts->timer, FUNC3(0, TS_POLL_DELAY),
					HRTIMER_MODE_REL);
		}
	}
	FUNC6(&ts->lock, flags);

	return IRQ_HANDLED;
}