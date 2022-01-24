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
struct ipath_sdma_desc {int dummy; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct ipath_devdata {int ipath_sdma_descq_cnt; scalar_t__ ipath_sdma_descq_phys; int /*<<< orphan*/ * ipath_sdma_descq; TYPE_1__* pcidev; int /*<<< orphan*/  ipath_sdma_vl15_count; TYPE_2__ ipath_sdma_vl15_timer; scalar_t__* ipath_sdma_head_dma; scalar_t__ ipath_sdma_head_phys; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int SDMA_DESCQ_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,char*) ; 
 int /*<<< orphan*/  vl15_watchdog_timeout ; 

__attribute__((used)) static int FUNC5(struct ipath_devdata *dd)
{
	int ret = 0;

	/* Allocate memory for SendDMA descriptor FIFO */
	dd->ipath_sdma_descq = FUNC1(&dd->pcidev->dev,
		SDMA_DESCQ_SZ, &dd->ipath_sdma_descq_phys, GFP_KERNEL);

	if (!dd->ipath_sdma_descq) {
		FUNC4(dd, "failed to allocate SendDMA descriptor "
			"FIFO memory\n");
		ret = -ENOMEM;
		goto done;
	}

	dd->ipath_sdma_descq_cnt =
		SDMA_DESCQ_SZ / sizeof(struct ipath_sdma_desc);

	/* Allocate memory for DMA of head register to memory */
	dd->ipath_sdma_head_dma = FUNC1(&dd->pcidev->dev,
		PAGE_SIZE, &dd->ipath_sdma_head_phys, GFP_KERNEL);
	if (!dd->ipath_sdma_head_dma) {
		FUNC4(dd, "failed to allocate SendDMA head memory\n");
		ret = -ENOMEM;
		goto cleanup_descq;
	}
	dd->ipath_sdma_head_dma[0] = 0;

	FUNC3(&dd->ipath_sdma_vl15_timer);
	dd->ipath_sdma_vl15_timer.function = vl15_watchdog_timeout;
	dd->ipath_sdma_vl15_timer.data = (unsigned long)dd;
	FUNC0(&dd->ipath_sdma_vl15_count, 0);

	goto done;

cleanup_descq:
	FUNC2(&dd->pcidev->dev, SDMA_DESCQ_SZ,
		(void *)dd->ipath_sdma_descq, dd->ipath_sdma_descq_phys);
	dd->ipath_sdma_descq = NULL;
	dd->ipath_sdma_descq_phys = 0;
done:
	return ret;
}