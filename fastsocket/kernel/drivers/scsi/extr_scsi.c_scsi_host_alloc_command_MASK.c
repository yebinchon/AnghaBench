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
struct scsi_cmnd {int /*<<< orphan*/  prot_sdb; } ;
struct Scsi_Host {int /*<<< orphan*/  cmd_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ SHOST_DIX_TYPE0_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*) ; 
 struct scsi_cmnd* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  scsi_sdb_cache ; 

__attribute__((used)) static struct scsi_cmnd *
FUNC4(struct Scsi_Host *shost, gfp_t gfp_mask)
{
	struct scsi_cmnd *cmd;

	cmd = FUNC2(shost->cmd_pool, gfp_mask);
	if (!cmd)
		return NULL;

	if (FUNC1(shost) >= SHOST_DIX_TYPE0_PROTECTION) {
		cmd->prot_sdb = FUNC0(scsi_sdb_cache, gfp_mask);

		if (!cmd->prot_sdb) {
			FUNC3(shost->cmd_pool, cmd);
			return NULL;
		}
	}

	return cmd;
}