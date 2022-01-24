#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct vio_dev {TYPE_2__ dev; } ;
struct iommu_table {unsigned long it_size; unsigned long it_offset; int it_blocksize; int /*<<< orphan*/  it_type; scalar_t__ it_busno; int /*<<< orphan*/  it_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_ISERIES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  TCE_VB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iommu_table* FUNC1 (struct iommu_table*,int) ; 
 struct iommu_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ *,unsigned long*,unsigned long*) ; 
 struct iommu_table* FUNC5 (struct vio_dev*) ; 

__attribute__((used)) static struct iommu_table *FUNC6(struct vio_dev *dev)
{
	const unsigned char *dma_window;
	struct iommu_table *tbl;
	unsigned long offset, size;

	if (FUNC0(FW_FEATURE_ISERIES))
		return FUNC5(dev);

	dma_window = FUNC3(dev->dev.archdata.of_node,
				  "ibm,my-dma-window", NULL);
	if (!dma_window)
		return NULL;

	tbl = FUNC2(sizeof(*tbl), GFP_KERNEL);
	if (tbl == NULL)
		return NULL;

	FUNC4(dev->dev.archdata.of_node, dma_window,
			    &tbl->it_index, &offset, &size);

	/* TCE table size - measured in tce entries */
	tbl->it_size = size >> IOMMU_PAGE_SHIFT;
	/* offset for VIO should always be 0 */
	tbl->it_offset = offset >> IOMMU_PAGE_SHIFT;
	tbl->it_busno = 0;
	tbl->it_type = TCE_VB;
	tbl->it_blocksize = 16;

	return FUNC1(tbl, -1);
}