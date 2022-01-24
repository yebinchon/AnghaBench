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
struct scsi_cmnd {int /*<<< orphan*/  list; } ;
struct Scsi_Host {int /*<<< orphan*/  free_list; int /*<<< orphan*/ * cmd_pool; int /*<<< orphan*/  free_list_lock; scalar_t__ unchecked_isa_dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const) ; 
 struct scsi_cmnd* FUNC3 (struct Scsi_Host*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct Scsi_Host *shost)
{
	struct scsi_cmnd *cmd;
	const gfp_t gfp_mask = shost->unchecked_isa_dma ? GFP_DMA : GFP_KERNEL;

	FUNC5(&shost->free_list_lock);
	FUNC0(&shost->free_list);

	shost->cmd_pool = FUNC2(gfp_mask);

	if (!shost->cmd_pool)
		return -ENOMEM;

	/*
	 * Get one backup command for this host.
	 */
	cmd = FUNC3(shost, gfp_mask);
	if (!cmd) {
		FUNC4(gfp_mask);
		shost->cmd_pool = NULL;
		return -ENOMEM;
	}
	FUNC1(&cmd->list, &shost->free_list);
	return 0;
}