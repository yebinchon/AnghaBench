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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  result; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_ioim_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ queue_depth; struct bfad_itnim_data_s* hostdata; int /*<<< orphan*/ * host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_OK ; 
 int /*<<< orphan*/  SCSI_STATUS_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfa_lun_queue_depth ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_itnim_s*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

void
FUNC4(void *drv, struct bfad_ioim_s *dio)
{
	struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dio;
	struct bfad_itnim_data_s *itnim_data;
	struct bfad_itnim_s *itnim;

	cmnd->result = FUNC0(DID_OK, SCSI_STATUS_GOOD);

	/* Unmap DMA, if host is NULL, it means a scsi passthru cmd */
	if (cmnd->device->host != NULL)
		FUNC2(cmnd);

	cmnd->host_scribble = NULL;

	/* Queue depth adjustment */
	if (bfa_lun_queue_depth > cmnd->device->queue_depth) {
		itnim_data = cmnd->device->hostdata;
		if (itnim_data) {
			itnim = itnim_data->itnim;
			if (itnim)
				FUNC1(itnim, cmnd->device);
		}
	}

	cmnd->scsi_done(cmnd);
}