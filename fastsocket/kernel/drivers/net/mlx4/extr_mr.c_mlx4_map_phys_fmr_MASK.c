#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct mlx4_fmr {unsigned long long page_shift; TYPE_4__* mpt; int /*<<< orphan*/  dma_handle; void** mtts; TYPE_2__ mr; int /*<<< orphan*/  maps; } ;
struct TYPE_5__ {scalar_t__ num_mpts; } ;
struct mlx4_dev {TYPE_3__* pdev; TYPE_1__ caps; } ;
struct TYPE_8__ {void* start; void* length; void* lkey; void* key; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  MLX4_MPT_STATUS_HW ; 
 int /*<<< orphan*/  MLX4_MPT_STATUS_SW ; 
 int MLX4_MTT_FLAG_PRESENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_fmr*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct mlx4_dev *dev, struct mlx4_fmr *fmr, u64 *page_list,
		      int npages, u64 iova, u32 *lkey, u32 *rkey)
{
	u32 key;
	int i, err;

	err = FUNC6(fmr, page_list, npages, iova);
	if (err)
		return err;

	++fmr->maps;

	key = FUNC5(fmr->mr.key);
	key += dev->caps.num_mpts;
	*lkey = *rkey = fmr->mr.key = FUNC4(key);

	*(u8 *) fmr->mpt = MLX4_MPT_STATUS_SW;

	/* Make sure MPT status is visible before writing MTT entries */
	FUNC7();

	FUNC2(&dev->pdev->dev, fmr->dma_handle,
				npages * sizeof(u64), DMA_TO_DEVICE);

	for (i = 0; i < npages; ++i)
		fmr->mtts[i] = FUNC1(page_list[i] | MLX4_MTT_FLAG_PRESENT);

	FUNC3(&dev->pdev->dev, fmr->dma_handle,
				   npages * sizeof(u64), DMA_TO_DEVICE);

	fmr->mpt->key    = FUNC0(key);
	fmr->mpt->lkey   = FUNC0(key);
	fmr->mpt->length = FUNC1(npages * (1ull << fmr->page_shift));
	fmr->mpt->start  = FUNC1(iova);

	/* Make MTT entries are visible before setting MPT status */
	FUNC7();

	*(u8 *) fmr->mpt = MLX4_MPT_STATUS_HW;

	/* Make sure MPT status is visible before consumer can use FMR */
	FUNC7();

	return 0;
}