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
struct ad7877 {int disabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer; scalar_t__ pending; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad7877*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ad7877 *ts)
{
	FUNC4(&ts->mutex);

	if (!ts->disabled) {
		ts->disabled = 1;
		FUNC2(ts->spi->irq);

		/* Wait for spi_async callback */
		while (ts->pending)
			FUNC3(1);

		if (FUNC1(&ts->timer))
			FUNC0(ts);
	}

	/* we know the chip's in lowpower mode since we always
	 * leave it that way after every request
	 */

	FUNC5(&ts->mutex);
}