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
typedef  int /*<<< orphan*/  u8 ;
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  tx_queue; scalar_t__ remove_wait; TYPE_1__* lport; } ;
struct fcpio_tag {int dummy; } ;
struct fcpio_fw_req {int /*<<< orphan*/  hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNIC_FLAGS_FWRESET ; 
 scalar_t__ FNIC_IN_ETH_MODE ; 
 scalar_t__ FNIC_IN_FC_MODE ; 
 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fcpio_tag*) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct fnic *fnic,
					    struct fcpio_fw_req *desc)
{
	u8 type;
	u8 hdr_status;
	struct fcpio_tag tag;
	int ret = 0;
	unsigned long flags;

	FUNC2(&desc->hdr, &type, &hdr_status, &tag);

	/* Clean up all outstanding io requests */
	FUNC3(fnic, SCSI_NO_TAG);

	FUNC9(&fnic->fnic_lock, flags);

	/* fnic should be in FC_TRANS_ETH_MODE */
	if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE) {
		/* Check status of reset completion */
		if (!hdr_status) {
			FUNC0(KERN_DEBUG, fnic->lport->host,
				      "reset cmpl success\n");
			/* Ready to send flogi out */
			fnic->state = FNIC_IN_ETH_MODE;
		} else {
			FUNC0(KERN_DEBUG,
				      fnic->lport->host,
				      "fnic fw_reset : failed %s\n",
				      FUNC5(hdr_status));

			/*
			 * Unable to change to eth mode, cannot send out flogi
			 * Change state to fc mode, so that subsequent Flogi
			 * requests from libFC will cause more attempts to
			 * reset the firmware. Free the cached flogi
			 */
			fnic->state = FNIC_IN_FC_MODE;
			ret = -1;
		}
	} else {
		FUNC0(KERN_DEBUG,
			      fnic->lport->host,
			      "Unexpected state %s while processing"
			      " reset cmpl\n", FUNC7(fnic->state));
		ret = -1;
	}

	/* Thread removing device blocks till firmware reset is complete */
	if (fnic->remove_wait)
		FUNC1(fnic->remove_wait);

	/*
	 * If fnic is being removed, or fw reset failed
	 * free the flogi frame. Else, send it out
	 */
	if (fnic->remove_wait || ret) {
		FUNC10(&fnic->fnic_lock, flags);
		FUNC8(&fnic->tx_queue);
		goto reset_cmpl_handler_end;
	}

	FUNC10(&fnic->fnic_lock, flags);

	FUNC6(fnic);

 reset_cmpl_handler_end:
	FUNC4(fnic, FNIC_FLAGS_FWRESET);

	return ret;
}