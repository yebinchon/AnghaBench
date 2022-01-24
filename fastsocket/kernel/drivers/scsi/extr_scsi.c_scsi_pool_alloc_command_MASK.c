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
struct scsi_host_cmd_pool {int gfp_mask; int /*<<< orphan*/  cmd_slab; int /*<<< orphan*/  sense_slab; } ;
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 struct scsi_cmnd* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct scsi_cmnd *
FUNC3(struct scsi_host_cmd_pool *pool, gfp_t gfp_mask)
{
	struct scsi_cmnd *cmd;

	cmd = FUNC2(pool->cmd_slab, gfp_mask | pool->gfp_mask);
	if (!cmd)
		return NULL;

	cmd->sense_buffer = FUNC0(pool->sense_slab,
					     gfp_mask | pool->gfp_mask);
	if (!cmd->sense_buffer) {
		FUNC1(pool->cmd_slab, cmd);
		return NULL;
	}

	return cmd;
}