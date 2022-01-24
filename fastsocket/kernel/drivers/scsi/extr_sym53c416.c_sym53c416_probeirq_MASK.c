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
 scalar_t__ COMMAND_REG ; 
 scalar_t__ DEST_BUS_ID ; 
 int ILLEGAL ; 
 scalar_t__ INT_REG ; 
 int NOOP ; 
 int SCI ; 
 scalar_t__ STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,int) ; 

__attribute__((used)) static int FUNC8(int base, int scsi_id)
{
	int irq, irqs;
	unsigned long i;

	/* Clear interrupt register */
	FUNC1(base + INT_REG);
	/* Start probing for irq's */
	irqs = FUNC4();
	/* Reinit chip */
	FUNC5(base, scsi_id);
	/* Cause interrupt */
	FUNC2(NOOP, base + COMMAND_REG);
	FUNC2(ILLEGAL, base + COMMAND_REG);
	FUNC2(0x07, base + DEST_BUS_ID);
	FUNC2(0x00, base + DEST_BUS_ID);
	/* Wait for interrupt to occur */
	i = jiffies + 20;
	while(FUNC6(jiffies, i) && !(FUNC1(base + STATUS_REG) & SCI))
		FUNC0();
	if(FUNC7(i, jiffies))	/* timed out */
		return 0;
	/* Get occurred irq */
	irq = FUNC3(irqs);
	FUNC5(base, scsi_id);
	return irq;
}