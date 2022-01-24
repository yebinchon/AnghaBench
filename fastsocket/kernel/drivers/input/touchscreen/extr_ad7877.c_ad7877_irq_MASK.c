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
struct ad7877 {int pending; int /*<<< orphan*/  lock; TYPE_1__* spi; int /*<<< orphan*/  msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *handle)
{
	struct ad7877 *ts = handle;
	unsigned long flags;
	int status;

	/*
	 * The repeated conversion sequencer controlled by TMR kicked off
	 * too fast. We ignore the last and process the sample sequence
	 * currently in the queue. It can't be older than 9.4ms, and we
	 * need to avoid that ts->msg doesn't get issued twice while in work.
	 */

	FUNC2(&ts->lock, flags);
	if (!ts->pending) {
		ts->pending = 1;

		status = FUNC1(ts->spi, &ts->msg);
		if (status)
			FUNC0(&ts->spi->dev, "spi_sync --> %d\n", status);
	}
	FUNC3(&ts->lock, flags);

	return IRQ_HANDLED;
}