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
 int CHIP_RESET ; 
 int /*<<< orphan*/  CMD_REG ; 
 int /*<<< orphan*/  INT_REG ; 
 int /*<<< orphan*/  REG0 ; 
 int SCSI_NOP ; 
 int /*<<< orphan*/  STAT_REG ; 
 unsigned long WATCHDOG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(void)
{
	int irqs, irq;
	unsigned long i;

	FUNC2(INT_REG);		/* clear the interrupt register */
	irqs = FUNC5();

	/* Invalid command will cause an interrupt */
	REG0;
	FUNC3(0xff, CMD_REG);

	/* Wait for the interrupt to occur */
	i = jiffies + WATCHDOG;
	while (FUNC6(i, jiffies) && !(FUNC2(STAT_REG) & 0x80))
		FUNC0();
	if (FUNC7(i, jiffies)) {	/* Timed out, must be hardware trouble */
		FUNC4(irqs);
		return -1;
	}

	irq = FUNC4(irqs);

	/* Kick the chip */
	FUNC3(CHIP_RESET, CMD_REG);
	FUNC3(SCSI_NOP, CMD_REG);
	FUNC1();

	return irq;
}