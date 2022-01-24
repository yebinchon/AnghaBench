#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_13__ {TYPE_5__* mpt; int /*<<< orphan*/  dma_handle; void** mtts; } ;
struct TYPE_14__ {TYPE_6__ arbel; } ;
struct TYPE_11__ {unsigned long long page_shift; } ;
struct TYPE_9__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct mthca_fmr {TYPE_7__ mem; TYPE_4__ attr; TYPE_2__ ibmr; int /*<<< orphan*/  maps; } ;
struct TYPE_8__ {scalar_t__ num_mpts; } ;
struct mthca_dev {int mthca_flags; TYPE_3__* pdev; TYPE_1__ limits; } ;
struct ib_fmr {int /*<<< orphan*/  device; } ;
struct TYPE_12__ {void* start; void* length; void* lkey; void* key; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int MTHCA_FLAG_SINAI_OPT ; 
 int /*<<< orphan*/  MTHCA_MPT_STATUS_HW ; 
 int /*<<< orphan*/  MTHCA_MPT_STATUS_SW ; 
 int MTHCA_MTT_FLAG_PRESENT ; 
 scalar_t__ SINAI_FMR_KEY_INC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mthca_fmr*,int*,int,int) ; 
 struct mthca_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mthca_fmr* FUNC8 (struct ib_fmr*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct ib_fmr *ibfmr, u64 *page_list,
			     int list_len, u64 iova)
{
	struct mthca_fmr *fmr = FUNC8(ibfmr);
	struct mthca_dev *dev = FUNC7(ibfmr->device);
	u32 key;
	int i, err;

	err = FUNC6(fmr, page_list, list_len, iova);
	if (err)
		return err;

	++fmr->maps;

	key = FUNC1(fmr->ibmr.lkey);
	if (dev->mthca_flags & MTHCA_FLAG_SINAI_OPT)
		key += SINAI_FMR_KEY_INC;
	else
		key += dev->limits.num_mpts;
	fmr->ibmr.lkey = fmr->ibmr.rkey = FUNC0(key);

	*(u8 *) fmr->mem.arbel.mpt = MTHCA_MPT_STATUS_SW;

	FUNC9();

	FUNC4(&dev->pdev->dev, fmr->mem.arbel.dma_handle,
				list_len * sizeof(u64), DMA_TO_DEVICE);

	for (i = 0; i < list_len; ++i)
		fmr->mem.arbel.mtts[i] = FUNC3(page_list[i] |
						     MTHCA_MTT_FLAG_PRESENT);

	FUNC5(&dev->pdev->dev, fmr->mem.arbel.dma_handle,
				   list_len * sizeof(u64), DMA_TO_DEVICE);

	fmr->mem.arbel.mpt->key    = FUNC2(key);
	fmr->mem.arbel.mpt->lkey   = FUNC2(key);
	fmr->mem.arbel.mpt->length = FUNC3(list_len * (1ull << fmr->attr.page_shift));
	fmr->mem.arbel.mpt->start  = FUNC3(iova);

	FUNC9();

	*(u8 *) fmr->mem.arbel.mpt = MTHCA_MPT_STATUS_HW;

	FUNC9();

	return 0;
}