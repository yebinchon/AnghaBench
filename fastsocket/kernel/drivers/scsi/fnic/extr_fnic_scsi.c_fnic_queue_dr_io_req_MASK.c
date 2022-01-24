#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnic_wq_copy {int dummy; } ;
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_3__* request; TYPE_2__* device; } ;
struct fnic_io_req {int /*<<< orphan*/  port_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  ed_tov; int /*<<< orphan*/  ra_tov; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int /*<<< orphan*/  in_flight; int /*<<< orphan*/ * wq_copy_lock; TYPE_4__ config; TYPE_1__* lport; struct vnic_wq_copy* wq_copy; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_7__ {int tag; } ;
struct TYPE_6__ {int /*<<< orphan*/  lun; } ;
struct TYPE_5__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FAILED ; 
 int /*<<< orphan*/  FCPIO_ITMF_LUN_RESET ; 
 int /*<<< orphan*/  FNIC_FLAGS_IO_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int FNIC_TAG_DEV_RST ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_wq_copy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vnic_wq_copy*) ; 

__attribute__((used)) static inline int FUNC11(struct fnic *fnic,
				       struct scsi_cmnd *sc,
				       struct fnic_io_req *io_req)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	struct Scsi_Host *host = fnic->lport->host;
	struct scsi_lun fc_lun;
	int ret = 0;
	unsigned long intr_flags;

	FUNC7(host->host_lock, intr_flags);
	if (FUNC9(FUNC3(fnic,
						FNIC_FLAGS_IO_BLOCKED))) {
		FUNC8(host->host_lock, intr_flags);
		return FAILED;
	} else
		FUNC2(&fnic->in_flight);
	FUNC8(host->host_lock, intr_flags);

	FUNC7(&fnic->wq_copy_lock[0], intr_flags);

	if (FUNC10(wq) <= fnic->wq_copy_desc_low[0])
		FUNC5(fnic, wq);

	if (!FUNC10(wq)) {
		FUNC0(KERN_DEBUG, fnic->lport->host,
			  "queue_dr_io_req failure - no descriptors\n");
		ret = -EAGAIN;
		goto lr_io_req_end;
	}

	/* fill in the lun info */
	FUNC6(sc->device->lun, &fc_lun);

	FUNC4(wq, sc->request->tag | FNIC_TAG_DEV_RST,
				     0, FCPIO_ITMF_LUN_RESET, SCSI_NO_TAG,
				     fc_lun.scsi_lun, io_req->port_id,
				     fnic->config.ra_tov, fnic->config.ed_tov);

lr_io_req_end:
	FUNC8(&fnic->wq_copy_lock[0], intr_flags);
	FUNC1(&fnic->in_flight);

	return ret;
}