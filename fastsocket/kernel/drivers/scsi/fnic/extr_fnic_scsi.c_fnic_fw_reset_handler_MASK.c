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
struct vnic_wq_copy {int dummy; } ;
struct fnic {scalar_t__* wq_copy_desc_low; TYPE_1__* lport; int /*<<< orphan*/ * wq_copy_lock; int /*<<< orphan*/  in_flight; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  frame_queue; struct vnic_wq_copy* wq_copy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FNIC_FLAGS_FWRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnic_wq_copy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (struct vnic_wq_copy*) ; 

int FUNC12(struct fnic *fnic)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	int ret = 0;
	unsigned long flags;

	/* indicate fwreset to io path */
	FUNC4(fnic, FNIC_FLAGS_FWRESET);

	FUNC8(&fnic->frame_queue);
	FUNC8(&fnic->tx_queue);

	/* wait for io cmpl */
	while (FUNC1(&fnic->in_flight))
		FUNC7(FUNC6(1));

	FUNC9(&fnic->wq_copy_lock[0], flags);

	if (FUNC11(wq) <= fnic->wq_copy_desc_low[0])
		FUNC5(fnic, wq);

	if (!FUNC11(wq))
		ret = -EAGAIN;
	else
		FUNC3(wq, SCSI_NO_TAG);

	FUNC10(&fnic->wq_copy_lock[0], flags);

	if (!ret)
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "Issued fw reset\n");
	else {
		FUNC2(fnic, FNIC_FLAGS_FWRESET);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "Failed to issue fw reset\n");
	}

	return ret;
}