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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/ * ctl_src_addr; } ;
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; TYPE_1__* lport; TYPE_3__ ctlr; } ;
struct fc_lport {int /*<<< orphan*/  host; } ;
struct fc_frame {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * granted_mac; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FNIC_IN_ETH_MODE ; 
 scalar_t__ FNIC_IN_ETH_TRANS_FC_MODE ; 
 scalar_t__ FNIC_IN_FC_MODE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct fc_lport*,struct fc_frame*) ; 
 int FUNC2 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (struct fc_frame*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct fnic* FUNC8 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct fc_lport *lport, u32 port_id, struct fc_frame *fp)
{
	struct fnic *fnic = FUNC8(lport);
	u8 *mac;
	int ret;

	FUNC0(KERN_DEBUG, lport->host, "set port_id %x fp %p\n",
		     port_id, fp);

	/*
	 * If we're clearing the FC_ID, change to use the ctl_src_addr.
	 * Set ethernet mode to send FLOGI.
	 */
	if (!port_id) {
		FUNC5(lport, fnic->ctlr.ctl_src_addr);
		FUNC3(fnic);
		return;
	}

	if (fp) {
		mac = FUNC6(fp)->granted_mac;
		if (FUNC7(mac)) {
			/* non-FIP - FLOGI already accepted - ignore return */
			FUNC1(&fnic->ctlr, lport, fp);
		}
		FUNC5(lport, mac);
	}

	/* Change state to reflect transition to FC mode */
	FUNC9(&fnic->fnic_lock);
	if (fnic->state == FNIC_IN_ETH_MODE || fnic->state == FNIC_IN_FC_MODE)
		fnic->state = FNIC_IN_ETH_TRANS_FC_MODE;
	else {
		FUNC0(KERN_DEBUG, fnic->lport->host,
			     "Unexpected fnic state %s while"
			     " processing flogi resp\n",
			     FUNC4(fnic->state));
		FUNC10(&fnic->fnic_lock);
		return;
	}
	FUNC10(&fnic->fnic_lock);

	/*
	 * Send FLOGI registration to firmware to set up FC mode.
	 * The new address will be set up when registration completes.
	 */
	ret = FUNC2(fnic, port_id);

	if (ret < 0) {
		FUNC9(&fnic->fnic_lock);
		if (fnic->state == FNIC_IN_ETH_TRANS_FC_MODE)
			fnic->state = FNIC_IN_ETH_MODE;
		FUNC10(&fnic->fnic_lock);
	}
}