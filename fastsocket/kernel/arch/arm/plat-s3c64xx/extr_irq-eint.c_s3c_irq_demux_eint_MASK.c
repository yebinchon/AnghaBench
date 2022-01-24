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
typedef  unsigned int u32 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  S3C64XX_EINT0MASK ; 
 int /*<<< orphan*/  S3C64XX_EINT0PEND ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static inline void FUNC3(unsigned int start, unsigned int end)
{
	u32 status = FUNC1(S3C64XX_EINT0PEND);
	u32 mask = FUNC1(S3C64XX_EINT0MASK);
	unsigned int irq;

	status &= ~mask;
	status >>= start;
	status &= (1 << (end - start + 1)) - 1;

	for (irq = FUNC0(start); irq <= FUNC0(end); irq++) {
		if (status & 1)
			FUNC2(irq);

		status >>= 1;
	}
}