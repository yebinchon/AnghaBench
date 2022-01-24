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
struct ipr_sglist {int /*<<< orphan*/  num_dma_sg; int /*<<< orphan*/  num_sg; int /*<<< orphan*/  scatterlist; } ;
struct ipr_ioa_cfg {TYPE_1__* host; struct ipr_sglist* ucode_sglist; scalar_t__ in_reset_reload; int /*<<< orphan*/  reset_wait_q; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ipr_ioa_cfg *ioa_cfg,
				struct ipr_sglist *sglist)
{
	unsigned long lock_flags;

	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	while(ioa_cfg->in_reset_reload) {
		FUNC4(ioa_cfg->host->host_lock, lock_flags);
		FUNC5(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		FUNC3(ioa_cfg->host->host_lock, lock_flags);
	}

	if (ioa_cfg->ucode_sglist) {
		FUNC4(ioa_cfg->host->host_lock, lock_flags);
		FUNC0(&ioa_cfg->pdev->dev,
			"Microcode download already in progress\n");
		return -EIO;
	}

	sglist->num_dma_sg = FUNC2(ioa_cfg->pdev, sglist->scatterlist,
					sglist->num_sg, DMA_TO_DEVICE);

	if (!sglist->num_dma_sg) {
		FUNC4(ioa_cfg->host->host_lock, lock_flags);
		FUNC0(&ioa_cfg->pdev->dev,
			"Failed to map microcode download buffer!\n");
		return -EIO;
	}

	ioa_cfg->ucode_sglist = sglist;
	FUNC1(ioa_cfg, IPR_SHUTDOWN_NORMAL);
	FUNC4(ioa_cfg->host->host_lock, lock_flags);
	FUNC5(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);

	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	ioa_cfg->ucode_sglist = NULL;
	FUNC4(ioa_cfg->host->host_lock, lock_flags);
	return 0;
}