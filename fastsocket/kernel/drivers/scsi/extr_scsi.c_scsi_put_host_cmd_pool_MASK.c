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
struct scsi_host_cmd_pool {scalar_t__ users; int /*<<< orphan*/  sense_slab; int /*<<< orphan*/  cmd_slab; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_DMA ; 
 int /*<<< orphan*/  host_cmd_pool_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_host_cmd_pool scsi_cmd_dma_pool ; 
 struct scsi_host_cmd_pool scsi_cmd_pool ; 

__attribute__((used)) static void FUNC4(gfp_t gfp_mask)
{
	struct scsi_host_cmd_pool *pool;

	FUNC2(&host_cmd_pool_mutex);
	pool = (gfp_mask & __GFP_DMA) ? &scsi_cmd_dma_pool :
		&scsi_cmd_pool;
	/*
	 * This may happen if a driver has a mismatched get and put
	 * of the command pool; the driver should be implicated in
	 * the stack trace
	 */
	FUNC0(pool->users == 0);

	if (!--pool->users) {
		FUNC1(pool->cmd_slab);
		FUNC1(pool->sense_slab);
	}
	FUNC3(&host_cmd_pool_mutex);
}