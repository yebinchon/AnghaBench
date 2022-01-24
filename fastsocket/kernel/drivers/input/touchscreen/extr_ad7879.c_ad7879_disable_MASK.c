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
struct ad7879 {int disabled; int /*<<< orphan*/  mutex; TYPE_1__* bus; int /*<<< orphan*/  timer; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD7879_PM_SHUTDOWN ; 
 int /*<<< orphan*/  AD7879_REG_CTRL2 ; 
 int /*<<< orphan*/  FUNC1 (struct ad7879*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ad7879 *ts)
{
	FUNC6(&ts->mutex);

	if (!ts->disabled) {

		ts->disabled = 1;
		FUNC5(ts->bus->irq);

		FUNC3(&ts->work);

		if (FUNC4(&ts->timer))
			FUNC1(ts);

		FUNC2(ts->bus, AD7879_REG_CTRL2,
			     FUNC0(AD7879_PM_SHUTDOWN));
	}

	FUNC7(&ts->mutex);
}