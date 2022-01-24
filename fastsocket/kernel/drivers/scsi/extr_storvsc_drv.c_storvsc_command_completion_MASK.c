#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmscsi_request {scalar_t__ data_in; scalar_t__ srb_status; scalar_t__ data_transfer_length; scalar_t__ scsi_status; } ;
struct storvsc_device {struct Scsi_Host* host; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {struct vmscsi_request vm_srb; } ;
struct storvsc_cmd_request {TYPE_3__ data_buffer; scalar_t__ bounce_sgl_count; int /*<<< orphan*/  bounce_sgl; TYPE_2__ vstor_packet; struct scsi_cmnd* cmd; } ;
struct stor_mem_pools {int /*<<< orphan*/  request_mempool; } ;
struct scsi_sense_hdr {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  sense_buffer; scalar_t__ result; TYPE_1__* device; } ;
struct hv_host_device {struct hv_device* dev; } ;
struct hv_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {struct stor_mem_pools* hostdata; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ READ_TYPE ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ SRB_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct storvsc_device* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct storvsc_cmd_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 struct hv_host_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vmscsi_request*,struct scsi_cmnd*,struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct storvsc_cmd_request *cmd_request)
{
	struct scsi_cmnd *scmnd = cmd_request->cmd;
	struct hv_host_device *host_dev = FUNC9(scmnd->device->host);
	void (*scsi_done_fn)(struct scsi_cmnd *);
	struct scsi_sense_hdr sense_hdr;
	struct vmscsi_request *vm_srb;
	struct stor_mem_pools *memp = scmnd->device->hostdata;
	struct Scsi_Host *host;
	struct storvsc_device *stor_dev;
	struct hv_device *dev = host_dev->dev;

	stor_dev = FUNC2(dev);
	host = stor_dev->host;

	vm_srb = &cmd_request->vstor_packet.vm_srb;
	if (cmd_request->bounce_sgl_count) {
		if (vm_srb->data_in == READ_TYPE)
			FUNC0(FUNC8(scmnd),
					cmd_request->bounce_sgl,
					FUNC7(scmnd),
					cmd_request->bounce_sgl_count);
		FUNC1(cmd_request->bounce_sgl,
					cmd_request->bounce_sgl_count);
	}

	scmnd->result = vm_srb->scsi_status;

	if (scmnd->result) {
		if (FUNC4(scmnd->sense_buffer,
				SCSI_SENSE_BUFFERSIZE, &sense_hdr))
			FUNC5("storvsc", &sense_hdr);
	}

	if (vm_srb->srb_status != SRB_STATUS_SUCCESS)
		FUNC10(vm_srb, scmnd, host, sense_hdr.asc,
					 sense_hdr.ascq);

	FUNC6(scmnd,
		cmd_request->data_buffer.len -
		vm_srb->data_transfer_length);

	scsi_done_fn = scmnd->scsi_done;

	scmnd->host_scribble = NULL;
	scmnd->scsi_done = NULL;

	scsi_done_fn(scmnd);

	FUNC3(cmd_request, memp->request_mempool);
}