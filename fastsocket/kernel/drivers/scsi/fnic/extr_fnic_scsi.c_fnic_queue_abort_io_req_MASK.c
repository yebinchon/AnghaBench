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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vnic_wq_copy {int dummy; } ;
struct fnic_io_req {int /*<<< orphan*/  port_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  ed_tov; int /*<<< orphan*/  ra_tov; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int /*<<< orphan*/  in_flight; int /*<<< orphan*/ * wq_copy_lock; TYPE_2__ config; TYPE_1__* lport; struct vnic_wq_copy* wq_copy; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNIC_FLAGS_IO_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int FNIC_TAG_ABORT ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_wq_copy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vnic_wq_copy*) ; 

__attribute__((used)) static inline int FUNC10(struct fnic *fnic, int tag,
					  u32 task_req, u8 *fc_lun,
					  struct fnic_io_req *io_req)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	struct Scsi_Host *host = fnic->lport->host;
	unsigned long flags;

	FUNC6(host->host_lock, flags);
	if (FUNC8(FUNC3(fnic,
						FNIC_FLAGS_IO_BLOCKED))) {
		FUNC7(host->host_lock, flags);
		return 1;
	} else
		FUNC2(&fnic->in_flight);
	FUNC7(host->host_lock, flags);

	FUNC6(&fnic->wq_copy_lock[0], flags);

	if (FUNC9(wq) <= fnic->wq_copy_desc_low[0])
		FUNC5(fnic, wq);

	if (!FUNC9(wq)) {
		FUNC7(&fnic->wq_copy_lock[0], flags);
		FUNC1(&fnic->in_flight);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			"fnic_queue_abort_io_req: failure: no descriptors\n");
		return 1;
	}
	FUNC4(wq, tag | FNIC_TAG_ABORT,
				     0, task_req, tag, fc_lun, io_req->port_id,
				     fnic->config.ra_tov, fnic->config.ed_tov);

	FUNC7(&fnic->wq_copy_lock[0], flags);
	FUNC1(&fnic->in_flight);

	return 0;
}