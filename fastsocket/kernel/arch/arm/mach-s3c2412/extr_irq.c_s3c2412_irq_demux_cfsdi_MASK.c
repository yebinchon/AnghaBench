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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_S3C2412_CF ; 
 int /*<<< orphan*/  IRQ_S3C2412_SDI ; 
 int /*<<< orphan*/  S3C2410_INTSUBMSK ; 
 int /*<<< orphan*/  S3C2410_SUBSRCPND ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq, struct irq_desc *desc)
{
	unsigned int subsrc, submsk;

	subsrc = FUNC1(S3C2410_SUBSRCPND);
	submsk = FUNC1(S3C2410_INTSUBMSK);

	subsrc  &= ~submsk;

	if (subsrc & FUNC0(IRQ_S3C2412_SDI))
		FUNC2(IRQ_S3C2412_SDI);

	if (subsrc & FUNC0(IRQ_S3C2412_CF))
		FUNC2(IRQ_S3C2412_CF);
}