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
struct ads7846 {int disabled; int irq_disabled; int /*<<< orphan*/  lock; scalar_t__ pending; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ads7846 *ts)
{
	if (ts->disabled)
		return;

	ts->disabled = 1;

	/* are we waiting for IRQ, or polling? */
	if (!ts->pending) {
		ts->irq_disabled = 1;
		FUNC0(ts->spi->irq);
	} else {
		/* the timer will run at least once more, and
		 * leave everything in a clean state, IRQ disabled
		 */
		while (ts->pending) {
			FUNC3(&ts->lock);
			FUNC1(1);
			FUNC2(&ts->lock);
		}
	}

	/* we know the chip's in lowpower mode since we always
	 * leave it that way after every request
	 */
}