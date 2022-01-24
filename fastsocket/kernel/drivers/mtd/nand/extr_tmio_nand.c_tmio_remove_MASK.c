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
struct tmio_nand {int /*<<< orphan*/  ccr; int /*<<< orphan*/  fcr; scalar_t__ irq; int /*<<< orphan*/  mtd; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct tmio_nand*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_nand*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tmio_nand* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct tmio_nand*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct tmio_nand *tmio = FUNC4(dev);

	FUNC3(&tmio->mtd);
	if (tmio->irq)
		FUNC0(tmio->irq, tmio);
	FUNC5(dev, tmio);
	FUNC1(tmio->fcr);
	FUNC1(tmio->ccr);
	FUNC2(tmio);
	return 0;
}