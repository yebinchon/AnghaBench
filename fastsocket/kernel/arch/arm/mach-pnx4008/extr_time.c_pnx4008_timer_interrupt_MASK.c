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
 int /*<<< orphan*/  HSTIM_COUNTER ; 
 int /*<<< orphan*/  HSTIM_INT ; 
 int /*<<< orphan*/  HSTIM_MATCH0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LATCH ; 
 int MATCH0_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	if (FUNC0(HSTIM_INT) & MATCH0_INT) {

		do {
			FUNC2();

			/*
			 * this algorithm takes care of possible delay
			 * for this interrupt handling longer than a normal
			 * timer period
			 */
			FUNC1(FUNC0(HSTIM_MATCH0) + LATCH,
				     HSTIM_MATCH0);
			FUNC1(MATCH0_INT, HSTIM_INT);	/* clear interrupt */

			/*
			 * The goal is to keep incrementing HSTIM_MATCH0
			 * register until HSTIM_MATCH0 indicates time after
			 * what HSTIM_COUNTER indicates.
			 */
		} while ((signed)
			 (FUNC0(HSTIM_MATCH0) -
			  FUNC0(HSTIM_COUNTER)) < 0);
	}

	return IRQ_HANDLED;
}