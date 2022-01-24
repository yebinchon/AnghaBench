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
 unsigned int IRQ_S3CUART_RX0 ; 
 int /*<<< orphan*/  S3C2410_INTSUBMSK ; 
 int /*<<< orphan*/  S3C2410_SUBSRCPND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int start)
{
	unsigned int subsrc, submsk;
	unsigned int offset = start - IRQ_S3CUART_RX0;

	/* read the current pending interrupts, and the mask
	 * for what it is available */

	subsrc = FUNC0(S3C2410_SUBSRCPND);
	submsk = FUNC0(S3C2410_INTSUBMSK);

	FUNC2("s3c_irq_demux_uart: start=%d (%d), subsrc=0x%08x,0x%08x\n",
		start, offset, subsrc, submsk);

	subsrc &= ~submsk;
	subsrc >>= offset;
	subsrc &= 7;

	if (subsrc != 0) {
		if (subsrc & 1)
			FUNC1(start);

		if (subsrc & 2)
			FUNC1(start+1);

		if (subsrc & 4)
			FUNC1(start+2);
	}
}