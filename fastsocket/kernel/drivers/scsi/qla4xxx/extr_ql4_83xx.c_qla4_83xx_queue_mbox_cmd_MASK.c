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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_qla_host {TYPE_1__* qla4_83xx_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_intr; int /*<<< orphan*/ * mailbox_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINT_MBX_INT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct scsi_qla_host *ha, uint32_t *mbx_cmd,
			      int incount)
{
	int i;

	/* Load all mailbox registers, except mailbox 0. */
	for (i = 1; i < incount; i++)
		FUNC0(mbx_cmd[i], &ha->qla4_83xx_reg->mailbox_in[i]);

	FUNC0(mbx_cmd[0], &ha->qla4_83xx_reg->mailbox_in[0]);

	/* Set Host Interrupt register to 1, to tell the firmware that
	 * a mailbox command is pending. Firmware after reading the
	 * mailbox command, clears the host interrupt register */
	FUNC0(HINT_MBX_INT_PENDING, &ha->qla4_83xx_reg->host_intr);
}