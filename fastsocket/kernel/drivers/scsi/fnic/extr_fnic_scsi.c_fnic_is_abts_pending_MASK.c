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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct fnic_io_req {int dummy; } ;
struct fnic {TYPE_1__* lport; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 scalar_t__ FNIC_IOREQ_ABTS_PENDING ; 
 int FNIC_MAX_IO_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/ * FUNC3 (struct fnic*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct scsi_cmnd* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct fnic *fnic, struct scsi_cmnd *lr_sc)
{
	int tag;
	struct fnic_io_req *io_req;
	spinlock_t *io_lock;
	unsigned long flags;
	int ret = 0;
	struct scsi_cmnd *sc;
	struct scsi_device *lun_dev = NULL;

	if (lr_sc)
		lun_dev = lr_sc->device;

	/* walk again to check, if IOs are still pending in fw */
	for (tag = 0; tag < FNIC_MAX_IO_REQ; tag++) {
		sc = FUNC5(fnic->lport->host, tag);
		/*
		 * ignore this lun reset cmd or cmds that do not belong to
		 * this lun
		 */
		if (!sc || (lr_sc && (sc->device != lun_dev || sc == lr_sc)))
			continue;

		io_lock = FUNC3(fnic, sc);
		FUNC6(io_lock, flags);

		io_req = (struct fnic_io_req *)FUNC0(sc);

		if (!io_req || sc->device != lun_dev) {
			FUNC7(io_lock, flags);
			continue;
		}

		/*
		 * Found IO that is still pending with firmware and
		 * belongs to the LUN that we are resetting
		 */
		FUNC2(KERN_INFO, fnic->lport->host,
			      "Found IO in %s on lun\n",
			      FUNC4(FUNC1(sc)));

		if (FUNC1(sc) == FNIC_IOREQ_ABTS_PENDING)
			ret = 1;
		FUNC7(io_lock, flags);
	}

	return ret;
}