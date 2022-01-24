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
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ systemh_irq_mask_register ; 
 scalar_t__ systemh_irq_request_register ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	if (systemh_irq_mask_register) {
		unsigned long val, mask = 0x01 << 1;

		/* Clear the "irq"th bit in the mask and set it in the request */
		val = FUNC0((unsigned long)systemh_irq_mask_register);
		val &= ~mask;
		FUNC1(val, (unsigned long)systemh_irq_mask_register);

		val = FUNC0((unsigned long)systemh_irq_request_register);
		val |= mask;
		FUNC1(val, (unsigned long)systemh_irq_request_register);
	}
}