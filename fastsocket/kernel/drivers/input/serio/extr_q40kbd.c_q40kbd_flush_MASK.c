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
 int /*<<< orphan*/  INTERRUPT_REG ; 
 int /*<<< orphan*/  KEYCODE_REG ; 
 int Q40_IRQ_KEYB_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q40kbd_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	int maxread = 100;
	unsigned long flags;

	FUNC1(&q40kbd_lock, flags);

	while (maxread-- && (Q40_IRQ_KEYB_MASK & FUNC0(INTERRUPT_REG)))
		FUNC0(KEYCODE_REG);

	FUNC2(&q40kbd_lock, flags);
}