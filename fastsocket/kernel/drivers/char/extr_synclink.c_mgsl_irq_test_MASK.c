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
struct mgsl_struct {int irq_occurred; int /*<<< orphan*/  irq_spinlock; } ;

/* Variables and functions */
 int BIT12 ; 
 int BIT13 ; 
 int /*<<< orphan*/  IO_PIN ; 
 int /*<<< orphan*/  MISCSTATUS_TXC_LATCHED ; 
 int /*<<< orphan*/  PCR ; 
 scalar_t__ SICR_TXC_ACTIVE ; 
 scalar_t__ SICR_TXC_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mgsl_struct*,scalar_t__) ; 
 int FUNC7 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mgsl_struct*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mgsl_struct*) ; 

__attribute__((used)) static bool FUNC11( struct mgsl_struct *info )
{
	unsigned long EndTime;
	unsigned long flags;

	FUNC1(&info->irq_spinlock,flags);
	FUNC10(info);

	/*
	 * Setup 16C32 to interrupt on TxC pin (14MHz clock) transition. 
	 * The ISR sets irq_occurred to true.
	 */

	info->irq_occurred = false;

	/* Enable INTEN gate for ISA adapter (Port 6, Bit12) */
	/* Enable INTEN (Port 6, Bit12) */
	/* This connects the IRQ request signal to the ISA bus */
	/* on the ISA adapter. This has no effect for the PCI adapter */
	FUNC8( info, PCR, (unsigned short)((FUNC7(info, PCR) | BIT13) & ~BIT12) );

	FUNC5(info);
	FUNC4(info, IO_PIN);
	FUNC3(info, IO_PIN);
	
	FUNC9(info, MISCSTATUS_TXC_LATCHED);
	FUNC6(info, SICR_TXC_ACTIVE + SICR_TXC_INACTIVE);

	FUNC2(&info->irq_spinlock,flags);

	EndTime=100;
	while( EndTime-- && !info->irq_occurred ) {
		FUNC0(10);
	}
	
	FUNC1(&info->irq_spinlock,flags);
	FUNC10(info);
	FUNC2(&info->irq_spinlock,flags);
	
	return info->irq_occurred;

}