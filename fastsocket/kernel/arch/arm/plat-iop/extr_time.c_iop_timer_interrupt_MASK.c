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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ next_jiffy_time ; 
 scalar_t__ FUNC0 () ; 
 long ticks_per_jiffy ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC3(int irq, void *dev_id)
{
	FUNC2(1);

	while ((signed long)(next_jiffy_time - FUNC0())
		>= ticks_per_jiffy) {
		FUNC1();
		next_jiffy_time -= ticks_per_jiffy;
	}

	return IRQ_HANDLED;
}