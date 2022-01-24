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
 int /*<<< orphan*/  IRQ_S3C2440_CAM_C ; 
 int /*<<< orphan*/  IRQ_S3C2440_CAM_P ; 
 int /*<<< orphan*/  S3C2410_INTSUBMSK ; 
 int /*<<< orphan*/  S3C2410_SUBSRCPND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq,
			      struct irq_desc *desc)
{
	unsigned int subsrc, submsk;

	/* read the current pending interrupts, and the mask
	 * for what it is available */

	subsrc = FUNC0(S3C2410_SUBSRCPND);
	submsk = FUNC0(S3C2410_INTSUBMSK);

	subsrc &= ~submsk;
	subsrc >>= 11;
	subsrc &= 3;

	if (subsrc != 0) {
		if (subsrc & 1) {
			FUNC1(IRQ_S3C2440_CAM_C);
		}
		if (subsrc & 2) {
			FUNC1(IRQ_S3C2440_CAM_P);
		}
	}
}