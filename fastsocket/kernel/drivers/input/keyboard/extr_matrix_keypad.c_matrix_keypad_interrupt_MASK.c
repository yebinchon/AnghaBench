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
struct matrix_keypad {int scan_pending; int /*<<< orphan*/  lock; TYPE_1__* pdata; int /*<<< orphan*/  work; scalar_t__ stopped; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  debounce_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *id)
{
	struct matrix_keypad *keypad = id;
	unsigned long flags;

	FUNC3(&keypad->lock, flags);

	/*
	 * See if another IRQ beaten us to it and scheduled the
	 * scan already. In that case we should not try to
	 * disable IRQs again.
	 */
	if (FUNC5(keypad->scan_pending || keypad->stopped))
		goto out;

	FUNC0(keypad);
	keypad->scan_pending = true;
	FUNC2(&keypad->work,
		FUNC1(keypad->pdata->debounce_ms));

out:
	FUNC4(&keypad->lock, flags);
	return IRQ_HANDLED;
}