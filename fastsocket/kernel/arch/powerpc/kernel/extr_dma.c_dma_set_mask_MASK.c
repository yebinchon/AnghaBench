#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct dma_map_ops {int (* set_dma_mask ) (struct device*,int /*<<< orphan*/ ) ;} ;
struct device {int /*<<< orphan*/ * dma_mask; } ;
struct TYPE_2__ {int (* dma_set_mask ) (struct device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 struct dma_map_ops* FUNC1 (struct device*) ; 
 TYPE_1__ ppc_md ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev, u64 dma_mask)
{
	struct dma_map_ops *dma_ops = FUNC1(dev);

	if (ppc_md.dma_set_mask)
		return ppc_md.dma_set_mask(dev, dma_mask);
	if (FUNC4(dma_ops == NULL))
		return -EIO;
	if (dma_ops->set_dma_mask != NULL)
		return dma_ops->set_dma_mask(dev, dma_mask);
	if (!dev->dma_mask || !FUNC0(dev, dma_mask))
		return -EIO;
	*dev->dma_mask = dma_mask;
	return 0;
}