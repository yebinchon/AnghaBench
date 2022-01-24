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
struct ssp_device {int /*<<< orphan*/  clk; } ;
struct ssp_dev {scalar_t__ irq; struct ssp_device* ssp; } ;

/* Variables and functions */
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct ssp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssp_device*) ; 

void FUNC4(struct ssp_dev *dev)
{
	struct ssp_device *ssp = dev->ssp;

	FUNC2(dev);
	if (dev->irq != NO_IRQ)
		FUNC1(dev->irq, dev);
	FUNC0(ssp->clk);
	FUNC3(ssp);
}