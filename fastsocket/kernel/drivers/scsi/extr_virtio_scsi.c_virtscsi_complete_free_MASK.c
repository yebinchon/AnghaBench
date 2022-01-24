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
struct virtio_scsi_cmd {scalar_t__ comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_scsi_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtscsi_cmd_pool ; 

__attribute__((used)) static void FUNC2(void *buf)
{
	struct virtio_scsi_cmd *cmd = buf;

	if (cmd->comp)
		FUNC0(cmd->comp);
	else
		FUNC1(cmd, virtscsi_cmd_pool);
}