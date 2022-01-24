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
 int /*<<< orphan*/  S3C2410_INTSUBMSK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S3C2410_SUBSRCPND ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static inline void FUNC3(unsigned int irq, unsigned int len)
{
	unsigned int subsrc, submsk;
	unsigned int end;

	/* read the current pending interrupts, and the mask
	 * for what it is available */

	subsrc = FUNC1(S3C2410_SUBSRCPND);
	submsk = FUNC1(S3C2410_INTSUBMSK);

	subsrc  &= ~submsk;
	subsrc >>= (irq - FUNC0(0));
	subsrc  &= (1 << len)-1;

	end = len + irq;

	for (; irq < end && subsrc; irq++) {
		if (subsrc & 1)
			FUNC2(irq);

		subsrc >>= 1;
	}
}