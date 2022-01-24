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
struct sys_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_VALID ; 
 unsigned int IRQ_S3C2440_AC97 ; 
 unsigned int IRQ_S3C2440_WDT ; 
 unsigned int IRQ_WDT ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  s3c_irq_demux_wdtac97 ; 
 int /*<<< orphan*/  s3c_irq_level_chip ; 
 int /*<<< orphan*/  s3c_irq_wdtac97 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sys_device *sysdev)
{
	unsigned int irqno;

	FUNC0("S3C2440: IRQ Support\n");

	/* add new chained handler for wdt, ac7 */

	FUNC2(IRQ_WDT, &s3c_irq_level_chip);
	FUNC4(IRQ_WDT, handle_level_irq);
	FUNC1(IRQ_WDT, s3c_irq_demux_wdtac97);

	for (irqno = IRQ_S3C2440_WDT; irqno <= IRQ_S3C2440_AC97; irqno++) {
		FUNC2(irqno, &s3c_irq_wdtac97);
		FUNC4(irqno, handle_level_irq);
		FUNC3(irqno, IRQF_VALID);
	}

	return 0;
}