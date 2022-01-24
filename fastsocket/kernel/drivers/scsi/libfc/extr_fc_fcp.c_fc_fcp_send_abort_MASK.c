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
struct fc_fcp_pkt {int /*<<< orphan*/  seq_ptr; TYPE_2__* lp; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int (* seq_exch_abort ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ tt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FC_SRB_ABORT_PENDING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fc_fcp_pkt *fsp)
{
	if (!fsp->seq_ptr)
		return -EINVAL;

	fsp->state |= FC_SRB_ABORT_PENDING;
	return fsp->lp->tt.seq_exch_abort(fsp->seq_ptr, 0);
}