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
struct fc_fcp_pkt {int /*<<< orphan*/  status_code; scalar_t__ io_status; int /*<<< orphan*/  state; int /*<<< orphan*/ * seq_ptr; TYPE_2__* lp; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exch_done ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ERROR ; 
 int /*<<< orphan*/  FC_SRB_ABORT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fc_fcp_pkt *fsp)
{
	if (fsp->seq_ptr) {
		fsp->lp->tt.exch_done(fsp->seq_ptr);
		fsp->seq_ptr = NULL;
	}

	fsp->state &= ~FC_SRB_ABORT_PENDING;
	fsp->io_status = 0;
	fsp->status_code = FC_ERROR;
	FUNC0(fsp);
}