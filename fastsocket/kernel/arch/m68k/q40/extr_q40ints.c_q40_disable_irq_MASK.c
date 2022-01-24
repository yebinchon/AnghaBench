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
 int /*<<< orphan*/  EXT_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mext_disabled ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(unsigned int irq)
{
	/* disable ISA iqs : only do something if the driver has been
	 * verified to be Q40 "compatible" - right now IDE, NE2K
	 * Any driver should not attempt to sleep across disable_irq !!
	 */

	if (irq >= 5 && irq <= 15) {
		FUNC0(0, EXT_ENABLE_REG);
		mext_disabled++;
		if (mext_disabled > 1)
			FUNC1("disable_irq nesting count %d\n",mext_disabled);
	}
}