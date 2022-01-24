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
struct scsi_cmnd {TYPE_2__* device; } ;
struct ipr_resource_entry {int in_erp; } ;
struct ipr_cmd_pkt {int /*<<< orphan*/ * cdb; int /*<<< orphan*/  request_type; } ;
struct TYPE_3__ {struct ipr_cmd_pkt cmd_pkt; } ;
struct ipr_cmnd {TYPE_1__ ioarcb; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_4__ {struct ipr_resource_entry* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPR_CANCEL_ALL_REQUESTS ; 
 int /*<<< orphan*/  IPR_CANCEL_ALL_TIMEOUT ; 
 int /*<<< orphan*/  IPR_RQTYPE_IOACMD ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_cmnd*,int /*<<< orphan*/  (*) (struct ipr_cmnd*),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  ipr_timeout ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct ipr_cmnd *ipr_cmd)
{
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
	struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
	struct ipr_cmd_pkt *cmd_pkt;

	res->in_erp = 1;

	FUNC2(ipr_cmd);

	if (!FUNC3(scsi_cmd->device)) {
		FUNC1(ipr_cmd);
		return;
	}

	cmd_pkt = &ipr_cmd->ioarcb.cmd_pkt;
	cmd_pkt->request_type = IPR_RQTYPE_IOACMD;
	cmd_pkt->cdb[0] = IPR_CANCEL_ALL_REQUESTS;

	FUNC0(ipr_cmd, ipr_erp_request_sense, ipr_timeout,
		   IPR_CANCEL_ALL_TIMEOUT);
}