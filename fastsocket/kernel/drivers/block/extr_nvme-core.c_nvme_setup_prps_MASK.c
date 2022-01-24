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
typedef  int u64 ;
struct scatterlist {int dummy; } ;
struct nvme_iod {int npages; int first_dma; struct scatterlist* sg; } ;
struct nvme_dev {struct dma_pool* prp_page_pool; struct dma_pool* prp_small_pool; } ;
struct nvme_common_command {void* prp2; void* prp1; } ;
struct dma_pool {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int dma_addr_t ;
typedef  void* __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int PAGE_SIZE ; 
 void* FUNC2 (int) ; 
 void** FUNC3 (struct dma_pool*,int /*<<< orphan*/ ,int*) ; 
 void*** FUNC4 (struct nvme_iod*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct scatterlist*) ; 
 int FUNC7 (struct scatterlist*) ; 
 struct scatterlist* FUNC8 (struct scatterlist*) ; 

int FUNC9(struct nvme_dev *dev, struct nvme_common_command *cmd,
			struct nvme_iod *iod, int total_len, gfp_t gfp)
{
	struct dma_pool *pool;
	int length = total_len;
	struct scatterlist *sg = iod->sg;
	int dma_len = FUNC7(sg);
	u64 dma_addr = FUNC6(sg);
	int offset = FUNC5(dma_addr);
	__le64 *prp_list;
	__le64 **list = FUNC4(iod);
	dma_addr_t prp_dma;
	int nprps, i;

	cmd->prp1 = FUNC2(dma_addr);
	length -= (PAGE_SIZE - offset);
	if (length <= 0)
		return total_len;

	dma_len -= (PAGE_SIZE - offset);
	if (dma_len) {
		dma_addr += (PAGE_SIZE - offset);
	} else {
		sg = FUNC8(sg);
		dma_addr = FUNC6(sg);
		dma_len = FUNC7(sg);
	}

	if (length <= PAGE_SIZE) {
		cmd->prp2 = FUNC2(dma_addr);
		return total_len;
	}

	nprps = FUNC1(length, PAGE_SIZE);
	if (nprps <= (256 / 8)) {
		pool = dev->prp_small_pool;
		iod->npages = 0;
	} else {
		pool = dev->prp_page_pool;
		iod->npages = 1;
	}

	prp_list = FUNC3(pool, gfp, &prp_dma);
	if (!prp_list) {
		cmd->prp2 = FUNC2(dma_addr);
		iod->npages = -1;
		return (total_len - length) + PAGE_SIZE;
	}
	list[0] = prp_list;
	iod->first_dma = prp_dma;
	cmd->prp2 = FUNC2(prp_dma);
	i = 0;
	for (;;) {
		if (i == PAGE_SIZE / 8) {
			__le64 *old_prp_list = prp_list;
			prp_list = FUNC3(pool, gfp, &prp_dma);
			if (!prp_list)
				return total_len - length;
			list[iod->npages++] = prp_list;
			prp_list[0] = old_prp_list[i - 1];
			old_prp_list[i - 1] = FUNC2(prp_dma);
			i = 1;
		}
		prp_list[i++] = FUNC2(dma_addr);
		dma_len -= PAGE_SIZE;
		dma_addr += PAGE_SIZE;
		length -= PAGE_SIZE;
		if (length <= 0)
			break;
		if (dma_len > 0)
			continue;
		FUNC0(dma_len < 0);
		sg = FUNC8(sg);
		dma_addr = FUNC6(sg);
		dma_len = FUNC7(sg);
	}

	return total_len;
}