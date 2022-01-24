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
struct ad7879 {int /*<<< orphan*/  work; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *handle)
{
	struct ad7879 *ts = handle;

	/* The repeated conversion sequencer controlled by TMR kicked off too fast.
	 * We ignore the last and process the sample sequence currently in the queue.
	 * It can't be older than 9.4ms
	 */

	if (!FUNC1(&ts->work))
		FUNC0(&ts->work);

	return IRQ_HANDLED;
}