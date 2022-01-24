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
typedef  int u32 ;
struct ssp_device {int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; } ;
struct ssp_dev {int port; int /*<<< orphan*/  irq; struct ssp_device* ssp; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NO_IRQ ; 
 int SSP_NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ssp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_device*) ; 
 int /*<<< orphan*/  ssp_interrupt ; 
 struct ssp_device* FUNC3 (int,char*) ; 

int FUNC4(struct ssp_dev *dev, u32 port, u32 init_flags)
{
	struct ssp_device *ssp;
	int ret;

	ssp = FUNC3(port, "SSP");
	if (ssp == NULL)
		return -ENODEV;

	dev->ssp = ssp;
	dev->port = port;

	/* do we need to get irq */
	if (!(init_flags & SSP_NO_IRQ)) {
		ret = FUNC1(ssp->irq, ssp_interrupt,
				0, "SSP", dev);
	    	if (ret)
			goto out_region;
		dev->irq = ssp->irq;
	} else
		dev->irq = NO_IRQ;

	/* turn on SSP port clock */
	FUNC0(ssp->clk);
	return 0;

out_region:
	FUNC2(ssp);
	return ret;
}