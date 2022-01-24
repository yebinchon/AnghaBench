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
typedef  int /*<<< orphan*/  u64 ;
struct device {int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct device *dev, u64 dma_mask)
{
	FUNC0(dev->bus != &pci_bus_type);

	if (!FUNC1(dev, dma_mask))
		return 0;

	*dev->dma_mask = dma_mask;
	return 1;
}