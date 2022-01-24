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
struct nvme_iod {int npages; int /*<<< orphan*/  first_dma; } ;
struct nvme_dev {int /*<<< orphan*/  prp_page_pool; int /*<<< orphan*/  prp_small_pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC1 (struct nvme_iod*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_iod*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct nvme_dev *dev, struct nvme_iod *iod)
{
	const int last_prp = PAGE_SIZE / 8 - 1;
	int i;
	__le64 **list = FUNC1(iod);
	dma_addr_t prp_dma = iod->first_dma;

	if (iod->npages == 0)
		FUNC0(dev->prp_small_pool, list[0], prp_dma);
	for (i = 0; i < iod->npages; i++) {
		__le64 *prp_list = list[i];
		dma_addr_t next_prp_dma = FUNC3(prp_list[last_prp]);
		FUNC0(dev->prp_page_pool, prp_list, prp_dma);
		prp_dma = next_prp_dma;
	}
	FUNC2(iod);
}