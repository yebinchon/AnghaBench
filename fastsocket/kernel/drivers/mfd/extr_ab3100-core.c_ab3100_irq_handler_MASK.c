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
struct ab3100 {int /*<<< orphan*/  work; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct ab3100 *ab3100 = data;
	/*
	 * Disable the IRQ and dispatch a worker to handle the
	 * event. Since the chip resides on I2C this is slow
	 * stuff and we will re-enable the interrupts once th
	 * worker has finished.
	 */
	FUNC0(irq);
	FUNC1(&ab3100->work);
	return IRQ_HANDLED;
}