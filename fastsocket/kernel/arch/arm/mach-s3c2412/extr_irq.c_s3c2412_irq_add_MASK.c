#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sys_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  set_wake; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_VALID ; 
 unsigned int IRQ_EINT0 ; 
 unsigned int IRQ_EINT3 ; 
 unsigned int IRQ_RTC ; 
 unsigned int IRQ_S3C2412_CF ; 
 int /*<<< orphan*/  IRQ_S3C2412_CFSDI ; 
 unsigned int IRQ_S3C2412_SDI ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 TYPE_1__ s3c2412_irq_cfsdi ; 
 int /*<<< orphan*/  s3c2412_irq_demux_cfsdi ; 
 TYPE_1__ s3c2412_irq_eint0t4 ; 
 TYPE_1__ s3c2412_irq_rtc_chip ; 
 int /*<<< orphan*/  s3c2412_irq_rtc_wake ; 
 TYPE_1__ s3c_irq_chip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sys_device *sysdev)
{
	unsigned int irqno;

	for (irqno = IRQ_EINT0; irqno <= IRQ_EINT3; irqno++) {
		FUNC1(irqno, &s3c2412_irq_eint0t4);
		FUNC3(irqno, handle_edge_irq);
		FUNC2(irqno, IRQF_VALID);
	}

	/* add demux support for CF/SDI */

	FUNC0(IRQ_S3C2412_CFSDI, s3c2412_irq_demux_cfsdi);

	for (irqno = IRQ_S3C2412_SDI; irqno <= IRQ_S3C2412_CF; irqno++) {
		FUNC1(irqno, &s3c2412_irq_cfsdi);
		FUNC3(irqno, handle_level_irq);
		FUNC2(irqno, IRQF_VALID);
	}

	/* change RTC IRQ's set wake method */

	s3c2412_irq_rtc_chip = s3c_irq_chip;
	s3c2412_irq_rtc_chip.set_wake = s3c2412_irq_rtc_wake;

	FUNC1(IRQ_RTC, &s3c2412_irq_rtc_chip);

	return 0;
}