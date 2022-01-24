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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTCLEAR ; 
 int /*<<< orphan*/  INTENABLE ; 
 int /*<<< orphan*/  INTREAD ; 
 int XCHAL_NUM_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int,struct pt_regs*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3 (struct pt_regs *regs)
{
	unsigned long intread = FUNC1 (INTREAD);
	unsigned long intenable = FUNC1 (INTENABLE);
	int i, mask;

	/* Handle all interrupts (no priorities).
	 * (Clear the interrupt before processing, in case it's
	 *  edge-triggered or software-generated)
	 */

	for (i=0, mask = 1; i < XCHAL_NUM_INTERRUPTS; i++, mask <<= 1) {
		if (mask & (intread & intenable)) {
			FUNC2 (mask, INTCLEAR);
			FUNC0 (i,regs);
		}
	}
}