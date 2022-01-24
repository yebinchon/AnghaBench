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
 unsigned int IRQ_CAM ; 
 unsigned int IRQ_NFCON ; 
 unsigned int IRQ_S3C2440_CAM_C ; 
 unsigned int IRQ_S3C2440_CAM_P ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  s3c_irq_cam ; 
 int /*<<< orphan*/  s3c_irq_demux_cam ; 
 int /*<<< orphan*/  s3c_irq_level_chip ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sys_device *sysdev)
{
	unsigned int irqno;

	FUNC1(IRQ_NFCON, &s3c_irq_level_chip);
	FUNC3(IRQ_NFCON, handle_level_irq);
	FUNC2(IRQ_NFCON, IRQF_VALID);

	/* add chained handler for camera */

	FUNC1(IRQ_CAM, &s3c_irq_level_chip);
	FUNC3(IRQ_CAM, handle_level_irq);
	FUNC0(IRQ_CAM, s3c_irq_demux_cam);

	for (irqno = IRQ_S3C2440_CAM_C; irqno <= IRQ_S3C2440_CAM_P; irqno++) {
		FUNC1(irqno, &s3c_irq_cam);
		FUNC3(irqno, handle_level_irq);
		FUNC2(irqno, IRQF_VALID);
	}

	return 0;
}