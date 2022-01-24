#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int /*<<< orphan*/  host; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;
struct esp_cmd_priv {TYPE_1__ u; } ;
struct esp_cmd_entry {int /*<<< orphan*/  list; struct scsi_cmnd* cmd; } ;
struct esp {int /*<<< orphan*/  queued_cmds; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct esp_cmd_priv* FUNC0 (struct scsi_cmnd*) ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 struct esp_cmd_entry* FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct esp* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *))
{
	struct scsi_device *dev = cmd->device;
	struct esp *esp = FUNC4(dev->host);
	struct esp_cmd_priv *spriv;
	struct esp_cmd_entry *ent;

	ent = FUNC1(esp);
	if (!ent)
		return SCSI_MLQUEUE_HOST_BUSY;

	ent->cmd = cmd;

	cmd->scsi_done = done;

	spriv = FUNC0(cmd);
	spriv->u.dma_addr = ~(dma_addr_t)0x0;

	FUNC3(&ent->list, &esp->queued_cmds);

	FUNC2(esp);

	return 0;
}