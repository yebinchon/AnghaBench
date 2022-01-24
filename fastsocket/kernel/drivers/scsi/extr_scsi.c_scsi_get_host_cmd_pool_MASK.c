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
struct scsi_host_cmd_pool {int /*<<< orphan*/  users; void* cmd_slab; void* sense_slab; int /*<<< orphan*/  slab_flags; int /*<<< orphan*/  sense_name; int /*<<< orphan*/  cmd_name; } ;
struct scsi_cmnd {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int SCSI_SENSE_BUFFERSIZE ; 
 int __GFP_DMA ; 
 int /*<<< orphan*/  host_cmd_pool_mutex ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_host_cmd_pool scsi_cmd_dma_pool ; 
 struct scsi_host_cmd_pool scsi_cmd_pool ; 

__attribute__((used)) static struct scsi_host_cmd_pool *FUNC4(gfp_t gfp_mask)
{
	struct scsi_host_cmd_pool *retval = NULL, *pool;
	/*
	 * Select a command slab for this host and create it if not
	 * yet existent.
	 */
	FUNC2(&host_cmd_pool_mutex);
	pool = (gfp_mask & __GFP_DMA) ? &scsi_cmd_dma_pool :
		&scsi_cmd_pool;
	if (!pool->users) {
		pool->cmd_slab = FUNC0(pool->cmd_name,
						   sizeof(struct scsi_cmnd), 0,
						   pool->slab_flags, NULL);
		if (!pool->cmd_slab)
			goto fail;

		pool->sense_slab = FUNC0(pool->sense_name,
						     SCSI_SENSE_BUFFERSIZE, 0,
						     pool->slab_flags, NULL);
		if (!pool->sense_slab) {
			FUNC1(pool->cmd_slab);
			goto fail;
		}
	}

	pool->users++;
	retval = pool;
 fail:
	FUNC3(&host_cmd_pool_mutex);
	return retval;
}