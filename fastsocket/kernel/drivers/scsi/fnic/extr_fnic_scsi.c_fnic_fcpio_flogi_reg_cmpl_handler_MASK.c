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
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  frame_work; scalar_t__ stop_rx_link_events; TYPE_1__* lport; } ;
struct fcpio_tag {int dummy; } ;
struct fcpio_fw_req {int /*<<< orphan*/  hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ FNIC_IN_ETH_MODE ; 
 scalar_t__ FNIC_IN_ETH_TRANS_FC_MODE ; 
 scalar_t__ FNIC_IN_FC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fcpio_tag*) ; 
 int /*<<< orphan*/  fnic_event_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct fnic *fnic,
					     struct fcpio_fw_req *desc)
{
	u8 type;
	u8 hdr_status;
	struct fcpio_tag tag;
	int ret = 0;
	unsigned long flags;

	FUNC1(&desc->hdr, &type, &hdr_status, &tag);

	/* Update fnic state based on status of flogi reg completion */
	FUNC6(&fnic->fnic_lock, flags);

	if (fnic->state == FNIC_IN_ETH_TRANS_FC_MODE) {

		/* Check flogi registration completion status */
		if (!hdr_status) {
			FUNC0(KERN_DEBUG, fnic->lport->host,
				      "flog reg succeeded\n");
			fnic->state = FNIC_IN_FC_MODE;
		} else {
			FUNC0(KERN_DEBUG,
				      fnic->lport->host,
				      "fnic flogi reg :failed %s\n",
				      FUNC2(hdr_status));
			fnic->state = FNIC_IN_ETH_MODE;
			ret = -1;
		}
	} else {
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "Unexpected fnic state %s while"
			      " processing flogi reg completion\n",
			      FUNC4(fnic->state));
		ret = -1;
	}

	if (!ret) {
		if (fnic->stop_rx_link_events) {
			FUNC7(&fnic->fnic_lock, flags);
			goto reg_cmpl_handler_end;
		}
		FUNC7(&fnic->fnic_lock, flags);

		FUNC3(fnic);
		FUNC5(fnic_event_queue, &fnic->frame_work);
	} else {
		FUNC7(&fnic->fnic_lock, flags);
	}

reg_cmpl_handler_end:
	return ret;
}