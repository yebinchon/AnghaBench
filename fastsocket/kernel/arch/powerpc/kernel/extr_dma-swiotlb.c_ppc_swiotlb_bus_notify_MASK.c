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
struct notifier_block {int dummy; } ;
struct dev_archdata {scalar_t__ max_direct_dma_addr; } ;
struct device {struct dev_archdata archdata; } ;

/* Variables and functions */
 unsigned long BUS_NOTIFY_ADD_DEVICE ; 
 int NOTIFY_DONE ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swiotlb_dma_ops ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
				  unsigned long action, void *data)
{
	struct device *dev = data;
	struct dev_archdata *sd;

	/* We are only intereted in device addition */
	if (action != BUS_NOTIFY_ADD_DEVICE)
		return 0;

	sd = &dev->archdata;
	sd->max_direct_dma_addr = 0;

	/* May need to bounce if the device can't address all of DRAM */
	if (FUNC0(dev) < FUNC1())
		FUNC2(dev, &swiotlb_dma_ops);

	return NOTIFY_DONE;
}