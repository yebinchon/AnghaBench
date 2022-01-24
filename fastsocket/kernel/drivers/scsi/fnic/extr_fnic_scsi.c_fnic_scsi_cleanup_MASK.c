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
struct TYPE_2__ {int /*<<< orphan*/  ctl_src_addr; } ;
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; TYPE_1__ ctlr; } ;
struct fc_lport {int dummy; } ;
typedef  enum fnic_state { ____Placeholder_fnic_state } fnic_state ;

/* Variables and functions */
 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ; 
 scalar_t__ FUNC0 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC1 (struct fnic*,int /*<<< orphan*/ ) ; 
 struct fnic* FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct fc_lport *lp)
{
	unsigned long flags;
	enum fnic_state old_state;
	struct fnic *fnic = FUNC2(lp);

	/* issue fw reset */
retry_fw_reset:
	FUNC5(&fnic->fnic_lock, flags);
	if (FUNC7(fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)) {
		/* fw reset is in progress, poll for its completion */
		FUNC6(&fnic->fnic_lock, flags);
		FUNC4(FUNC3(100));
		goto retry_fw_reset;
	}
	old_state = fnic->state;
	fnic->state = FNIC_IN_FC_TRANS_ETH_MODE;
	FUNC1(fnic, fnic->ctlr.ctl_src_addr);
	FUNC6(&fnic->fnic_lock, flags);

	if (FUNC0(fnic)) {
		FUNC5(&fnic->fnic_lock, flags);
		if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)
			fnic->state = old_state;
		FUNC6(&fnic->fnic_lock, flags);
	}

}